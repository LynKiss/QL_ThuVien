const db = require("../common/db");
const gemini = require("../common/geminiClient");

let cachedSchema = null; // ⚡ cache schema trong RAM

// 🔒 Kiểm tra câu SQL an toàn (chỉ SELECT)
function isSafeSelect(sql) {
  if (!sql) return false;
  const s = sql.toLowerCase().replace(/\s+/g, " ");
  if (!s.startsWith("select")) return false;
  const forbidden = [
    "insert ",
    "update ",
    "delete ",
    "drop ",
    "alter ",
    "create ",
    "truncate ",
  ];
  return !forbidden.some((f) => s.includes(f));
}

// 🧩 Lấy cấu trúc các bảng trong DB (DESCRIBE)
async function getDatabaseSchema(force = false) {
  // Dùng cache nếu có
  if (cachedSchema && !force) return cachedSchema;

  const [tables] = await db.query("SHOW TABLES");
  const schema = {};

  for (const row of tables) {
    const tableName = Object.values(row)[0];
    const [columns] = await db.query(`DESCRIBE \`${tableName}\``);
    schema[tableName] = columns
      .map((col) => `${col.Field} (${col.Type})`)
      .join(", ");
  }

  let schemaDescription = "";
  for (const [table, cols] of Object.entries(schema)) {
    schemaDescription += `\nBảng ${table}: ${cols}\n`;
  }

  cachedSchema = schemaDescription; // lưu vào bộ nhớ

  return schemaDescription;
}

const chatWithAI = async (req, res) => {
  try {
    const { message } = req.body;
    const user = req.user || {};
    const user_id = user.id;
    const role_id = user.role_id || user.vai_tro_id || 3;
    const AI_ID = 9; // ⚙️ mã người dùng cố định của AI

    if (!message) return res.status(400).json({ error: "Thiếu câu hỏi" });

    const isAdmin = [1, 2].includes(role_id);
    const rolePrompt = isAdmin
      ? `Bạn là trợ lý ảo dành cho quản trị viên thư viện. Bạn có thể truy vấn SQL SELECT để xem báo cáo, thống kê, hoặc thông tin chung.`
      : `Bạn là trợ lý ảo dành cho độc giả. Bạn chỉ được phép truy vấn thông tin liên quan đến người dùng có id = ${user_id}.`;

    // 1️⃣ Phân loại câu hỏi
    const classifyPrompt = `
Người dùng hỏi: "${message}"
Nếu câu hỏi liên quan đến dữ liệu thư viện (sách, mượn, trả, thống kê, báo cáo...), trả lời duy nhất "SQL".
Nếu là câu hỏi ngoài dữ liệu thư viện (kiến thức, hướng dẫn, khái niệm...), trả lời duy nhất "AI".
Không thêm chữ nào khác ngoài "SQL" hoặc "AI".
`;

    const classifyRes = await gemini.generateContent(classifyPrompt);
    const type = classifyRes.response.text().trim().toUpperCase();

    // 2️⃣ Nếu là câu hỏi chung → AI trả lời tự nhiên
    if (type === "AI") {
      const aiRes = await gemini.generateContent(`
Người dùng hỏi: "${message}"
Trả lời bằng tiếng Việt, tự nhiên, thân thiện, ngắn gọn, dễ hiểu.
`);
      const reply = aiRes.response.text().trim();

      await db.query(
        "INSERT INTO tin_nhan(ma_nguoi_gui, ma_nguoi_nhan, noi_dung, thoi_gian) VALUES (?, ?, ?, NOW())",
        [user_id, AI_ID, message]
      );
      await db.query(
        "INSERT INTO tin_nhan(ma_nguoi_gui, ma_nguoi_nhan, noi_dung, thoi_gian) VALUES (?, ?, ?, NOW())",
        [AI_ID, user_id, reply]
      );

      return res.json({ mode: "AI", reply });
    }

    // 3️⃣ Nếu là truy vấn SQL
    const schema = await getDatabaseSchema();
    const promptSQL = `
${rolePrompt}

Bảng sach có các cột quan trọng:
(ma_sach, ten_sach, tac_gia, nam_xuat_ban, so_luong_hien_co, ma_danh_muc, ma_ngon_ngu)

Cấu trúc thật của cơ sở dữ liệu:
${schema}

Câu hỏi người dùng:
"${message}"

⚠️ Quy tắc bắt buộc:
- Chỉ dùng đúng các tên bảng và cột xuất hiện ở trên.
- Nếu cột không tồn tại trong cấu trúc, KHÔNG ĐƯỢC DÙNG.
- Không viết dấu chấm phẩy (;) cuối câu.
- Viết đúng cú pháp MySQL chuẩn.
- Chỉ dùng SELECT.
`;

    const sqlRes = await gemini.generateContent(promptSQL);
    let sql = sqlRes.response
      .text()
      .replace(/```sql|```/gi, "")
      .trim();

    if (!isSafeSelect(sql)) {
      const warning = "⚠️ Câu truy vấn bị chặn vì không an toàn.";
      await db.query(
        "INSERT INTO tin_nhan(ma_nguoi_gui, ma_nguoi_nhan, noi_dung, thoi_gian) VALUES (?, ?, ?, NOW())",
        [user_id, AI_ID, message]
      );
      await db.query(
        "INSERT INTO tin_nhan(ma_nguoi_gui, ma_nguoi_nhan, noi_dung, thoi_gian) VALUES (?, ?, ?, NOW())",
        [AI_ID, user_id, warning]
      );
      return res.json({ mode: "SQL", sql, reply: warning });
    }

    // 4️⃣ Thực thi SQL
    const [rows] = await db.query(sql);

    // 5️⃣ Gemini tóm tắt kết quả
    const summaryPrompt = `
Kết quả JSON: ${JSON.stringify(rows)}
Trả lời bằng tiếng Việt, ngắn gọn, dễ hiểu.
Nếu không có dữ liệu, nói: "Không tìm thấy dữ liệu phù hợp tại thư viện ."
`;
    const summaryRes = await gemini.generateContent(summaryPrompt);
    const reply = summaryRes.response.text().trim();

    // 6️⃣ Lưu hội thoại
    await db.query(
      "INSERT INTO tin_nhan(ma_nguoi_gui, ma_nguoi_nhan, noi_dung, thoi_gian) VALUES (?, ?, ?, NOW())",
      [user_id, AI_ID, message]
    );
    await db.query(
      "INSERT INTO tin_nhan(ma_nguoi_gui, ma_nguoi_nhan, noi_dung, thoi_gian) VALUES (?, ?, ?, NOW())",
      [AI_ID, user_id, reply]
    );

    res.json({
      mode: "SQL",
      sql,
      rows,
      reply,
      role: isAdmin ? "admin" : "user",
    });
  } catch (error) {
    console.error("Chat Gemini error:", error);
    res.status(500).json({ error: "Lỗi xử lý Gemini hoặc cơ sở dữ liệu." });
  }
};

const getChatHistory = async (req, res) => {
  try {
    const user = req.user || {};
    const user_id = user.id;

    const [rows] = await db.query(
      `SELECT ma_tin_nhan, ma_nguoi_gui, ma_nguoi_nhan, noi_dung, thoi_gian
       FROM tin_nhan 
       WHERE (ma_nguoi_gui = ? OR ma_nguoi_nhan = ?)
       ORDER BY thoi_gian ASC`,
      [user_id, user_id]
    );

    if (rows.length === 0) {
      // nếu chưa có tin nhắn nào, trả về lời chào mặc định
      return res.json([
        {
          ma_tin_nhan: 0,
          ma_nguoi_gui: 9, // AI
          ma_nguoi_nhan: user_id,
          noi_dung:
            "Xin chào 👋, tôi là trợ lý thư viện AI! Tôi có thể giúp bạn tra cứu sách, xem phiếu mượn hoặc hỗ trợ tài khoản.",
          thoi_gian: new Date(),
        },
      ]);
    }

    res.json(rows);
  } catch (error) {
    console.error("Lỗi lấy lịch sử chat:", error);
    res.status(500).json({ error: "Không lấy được lịch sử chat." });
  }
};

module.exports = { chatWithAI, getChatHistory };

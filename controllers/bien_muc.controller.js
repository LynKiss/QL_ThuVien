const { pool } = require("../common/db");

// ==================== THÊM BIÊN MỤC ====================
exports.themBienMuc = async (req, res) => {
  const conn = await pool.getConnection();
  try {
    const {
      tieu_de,
      tom_tat,
      isbn,
      nam_xuat_ban,
      nha_xuat_ban,
      so_trang,
      ngon_ngu,
      dinh_danh,
      ma_danh_muc,
      ma_nha_cung_cap, // 👈 thêm
      ma_khu_vuc, // 👈 thêm
      noi_bat,
      tac_gia,
      thong_tin_phu,
    } = req.body;

    if (!tieu_de?.trim()) {
      return res.status(400).json({ message: "Thiếu tiêu đề sách" });
    }

    const hinhBiaUrl = req.files?.hinh_bia?.[0]?.cloudinaryUrl || null;
    const hinhBiaPublicId = req.files?.hinh_bia?.[0]?.publicId || null; // 👈 thêm dòng này
    console.log("📋 hinhBiaPublicId từ req.files:", hinhBiaPublicId);
    const pdfUrl = req.files?.pdf?.[0]?.supabaseUrl || null;
    const anhChungTuUrl = req.files?.anh_chung_tu?.[0]?.cloudinaryUrl || null;

    const [result] = await conn.execute(
      `
  INSERT INTO bien_muc_sach
  (tieu_de, tom_tat, isbn, nam_xuat_ban, nha_xuat_ban,
   so_trang, ngon_ngu, dinh_danh, ma_danh_muc, ma_nha_cung_cap, ma_khu_vuc,
   noi_bat, hinh_bia, hinh_bia_public_id, file_pdf)
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
  `,
      [
        tieu_de.trim(),
        tom_tat || null,
        isbn || null,
        nam_xuat_ban || null,
        nha_xuat_ban || null,
        so_trang || null,
        ngon_ngu || null,
        dinh_danh || null,
        ma_danh_muc || null,
        ma_nha_cung_cap || null,
        ma_khu_vuc || null,
        noi_bat == "1" ? 1 : 0,
        hinhBiaUrl || null,
        hinhBiaPublicId || null, // 👈 mới thêm
        pdfUrl || null,
      ]
    );

    const ma_bien_muc = result.insertId;

    // 2️⃣ Thêm vào thong_tin_phu_sach nếu có
    if (thong_tin_phu) {
      const info =
        typeof thong_tin_phu === "string"
          ? JSON.parse(thong_tin_phu)
          : thong_tin_phu;

      await conn.execute(
        `INSERT INTO thong_tin_phu_sach 
        (ma_bien_muc, nhan_de_phu, so_cutter_tac_gia, phan_loai_tai_lieu,
         lan_tai_ban, kho_sach_cm, tai_lieu_kem_theo, chu_de, so_chung_tu, anh_chung_tu)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          ma_bien_muc,
          info.nhan_de_phu || null,
          info.so_cutter_tac_gia || null,
          info.phan_loai_tai_lieu || null,
          info.lan_tai_ban || 1,
          info.kho_sach_cm || null,
          info.tai_lieu_kem_theo || null,
          info.chu_de || null,
          info.so_chung_tu || null,
          anhChungTuUrl || null,
        ]
      );
    }

    // 3️⃣ Thêm file PDF (nếu có)
    if (pdfUrl) {
      await conn.execute(
        `INSERT INTO bien_muc_tai_lieu_dinh_kem 
        (ma_bien_muc, ten_file, duong_dan, loai_file, ngay_tao)
        VALUES (?, ?, ?, 'pdf', NOW())`,
        [ma_bien_muc, req.files.pdf?.[0]?.originalname || "file.pdf", pdfUrl]
      );
    }

    // 4️⃣ Thêm tác giả
    if (tac_gia) {
      try {
        const authors =
          typeof tac_gia === "string" ? JSON.parse(tac_gia) : tac_gia;

        if (Array.isArray(authors) && authors.length > 0) {
          for (const name of authors) {
            await conn.execute(
              `INSERT INTO bien_muc_tac_gia (ma_bien_muc, ten_tac_gia) VALUES (?, ?)`,
              [ma_bien_muc, name.trim()]
            );
          }
        }
      } catch (parseErr) {
        console.warn("⚠️ Lỗi parse tác_gia:", parseErr.message);
      }
    }

    res.status(201).json({
      message: "✅ Thêm biên mục + thông tin phụ thành công",
      ma_bien_muc,
      hinhBiaUrl,
      pdfUrl,
      anhChungTuUrl,
    });
  } catch (err) {
    console.error("❌ Lỗi thêm biên mục:", err);
    res.status(500).json({
      message: "Lỗi khi thêm biên mục",
      error: err.message,
    });
  } finally {
    conn.release();
  }
};

// ==================== KÍCH HOẠT BIÊN MỤC ====================
exports.kichHoatBienMuc = async (req, res) => {
  const { ma_bien_muc, so_ban_sao, vi_tri, gia, update_flag } = req.body;
  console.log("🔹 Body nhận từ FE:", req.body); // <--- thêm dòng này
  console.log("📍 Bắt đầu gọi procedure KichHoatBienMuc_V5");
  const conn = await pool.getConnection();

  try {
    const [rows] = await conn.query("CALL KichHoatBienMuc_V5(?, ?, ?, ?, ?)", [
      ma_bien_muc,
      so_ban_sao || 1,
      vi_tri || "",
      gia || 0,
      update_flag || 0,
    ]);

    const result = rows?.[0] || rows;
    console.log("✅ Kết quả procedure:", result);
    let message = result.message || "📦 Kích hoạt biên mục thành công";
    let status = result.status || "OK";

    // Tuỳ chỉnh icon / text hiển thị frontend
    if (message.includes("Tạo đầu sách")) message = "✅ " + message;
    else if (message.includes("cập nhật")) message = "⚠️ " + message;
    else if (message.includes("chỉ thêm")) message = "🆕 " + message;

    res.json({
      status,
      message,
      ma_sach: result.ma_sach || null,
    });
  } catch (err) {
    console.error("❌ Lỗi kích hoạt:");
    console.error("▪ message:", err.message);
    console.error("▪ sqlMessage:", err.sqlMessage);
    console.error("▪ sqlState:", err.sqlState);
    console.error("▪ stack:", err.stack);

    res.status(500).json({
      status: "ERROR",
      message: err.sqlMessage || err.message || "Lỗi khi kích hoạt biên mục",
    });
  } finally {
    conn.release();
  }
};

// ==================== XEM CHI TIẾT BIÊN MỤC ====================
exports.getBienMucById = async (req, res) => {
  const { id } = req.params;
  const conn = await pool.getConnection();

  try {
    // 1️⃣ Lấy thông tin chính
    const [rows] = await conn.execute(
      `
      SELECT 
        bms.*,
        dm.ten_danh_muc
      FROM bien_muc_sach bms
      LEFT JOIN danh_muc dm ON bms.ma_danh_muc = dm.ma_danh_muc
      WHERE bms.ma_bien_muc = ?
      `,
      [id]
    );

    if (rows.length === 0) {
      return res.status(404).json({ message: "Không tìm thấy biên mục" });
    }

    const bienMuc = rows[0];

    // 2️⃣ Lấy danh sách tác giả
    const [tacGias] = await conn.execute(
      `SELECT ten_tac_gia FROM bien_muc_tac_gia WHERE ma_bien_muc = ?`,
      [id]
    );

    // 3️⃣ Lấy danh sách tài liệu đính kèm (PDF,...)
    const [taiLieus] = await conn.execute(
      `SELECT loai_file, duong_dan FROM bien_muc_tai_lieu_dinh_kem WHERE ma_bien_muc = ?`,
      [id]
    );

    res.json({
      ...bienMuc,
      tac_gia: tacGias.map((t) => t.ten_tac_gia),
      tai_lieu: taiLieus,
    });
  } catch (err) {
    console.error("❌ Lỗi getBienMucById:", err);
    res
      .status(500)
      .json({ message: "Lỗi khi lấy chi tiết biên mục", error: err.message });
  } finally {
    conn.release();
  }
};
// ==================== DANH SÁCH BIÊN MỤC ====================
exports.getAllBienMuc = async (req, res) => {
  const conn = await pool.getConnection();
  try {
    const {
      page = 1, // trang hiện tại
      limit = 10, // số bản ghi mỗi trang
      search = "", // từ khóa tìm kiếm
      ma_danh_muc = "", // lọc theo danh mục
      trang_thai = "", // lọc theo trạng thái (nếu cần)
    } = req.query;

    const offset = (page - 1) * limit;

    // 1️⃣ Tạo điều kiện lọc động
    let whereClause = "WHERE 1=1";
    const params = [];

    if (search) {
      whereClause += " AND (bms.tieu_de LIKE ? OR bms.isbn LIKE ?)";
      params.push(`%${search}%`, `%${search}%`);
    }

    if (ma_danh_muc) {
      whereClause += " AND bms.ma_danh_muc = ?";
      params.push(ma_danh_muc);
    }

    if (trang_thai) {
      whereClause += " AND bms.trang_thai = ?";
      params.push(trang_thai);
    }

    // 2️⃣ Lấy tổng số dòng (cho phân trang)
    const [countRows] = await conn.execute(
      `SELECT COUNT(*) AS total FROM bien_muc_sach bms ${whereClause}`,
      params
    );
    const total = countRows[0].total;
    const totalPages = Math.ceil(total / limit);

    // 3️⃣ Truy vấn dữ liệu trang hiện tại
    const [rows] = await conn.execute(
      `
      SELECT 
        bms.ma_bien_muc,
        bms.tieu_de,
        bms.isbn,
        bms.nam_xuat_ban,
        bms.hinh_bia,
        bms.trang_thai,
        bms.ngon_ngu,
        dm.ten_danh_muc,
        (SELECT GROUP_CONCAT(ten_tac_gia SEPARATOR ', ')
         FROM bien_muc_tac_gia
         WHERE ma_bien_muc = bms.ma_bien_muc) AS tac_gia
      FROM bien_muc_sach bms
      LEFT JOIN danh_muc dm ON bms.ma_danh_muc = dm.ma_danh_muc
      ${whereClause}
      ORDER BY bms.ma_bien_muc DESC
      LIMIT ? OFFSET ?
      `,
      [...params, Number(limit), Number(offset)]
    );

    // ✅ Trả về kết quả
    res.json({
      total,
      totalPages,
      currentPage: Number(page),
      data: rows,
    });
  } catch (err) {
    console.error("❌ Lỗi getAllBienMuc:", err);
    res
      .status(500)
      .json({ message: "Lỗi khi lấy danh sách biên mục", error: err.message });
  } finally {
    conn.release();
  }
};

// ==================== DANH SÁCH BIÊN MỤC ĐẦY ĐỦ ====================
exports.getAllBienMucFull = async (req, res) => {
  const conn = await pool.getConnection();
  try {
    const {
      search = "",
      ma_danh_muc = "",
      trang_thai = "",
      limit = 20,
      page = 1,
    } = req.query;

    const limitNum = parseInt(limit, 10) || 20;
    const pageNum = parseInt(page, 10) || 1;
    const offsetNum = (pageNum - 1) * limitNum;

    // 1️⃣ Tạo điều kiện lọc động
    let whereClause = "WHERE 1=1";
    const params = [];

    if (search) {
      whereClause += " AND (bms.tieu_de LIKE ? OR bms.isbn LIKE ?)";
      params.push(`%${search}%`, `%${search}%`);
    }

    if (ma_danh_muc) {
      whereClause += " AND bms.ma_danh_muc = ?";
      params.push(ma_danh_muc);
    }

    if (trang_thai) {
      whereClause += " AND bms.trang_thai = ?";
      params.push(trang_thai);
    }

    // 2️⃣ Tổng số bản ghi cho phân trang
    const [countRows] = await conn.query(
      `SELECT COUNT(*) AS total FROM bien_muc_sach bms ${whereClause}`,
      params
    );
    const total = countRows[0]?.total || 0;

    // 3️⃣ Truy vấn dữ liệu chi tiết
    const query = `
      SELECT 
        bms.ma_bien_muc,
        bms.tieu_de,
        bms.tom_tat,
        bms.isbn,
        bms.nam_xuat_ban,
        bms.nha_xuat_ban,
        bms.so_trang,
        bms.ngon_ngu,
        bms.dinh_danh,
        bms.hinh_bia,
        bms.trang_thai,
        bms.noi_bat,
        bms.ngay_tao,
        dm.ten_danh_muc,
        (
          SELECT GROUP_CONCAT(bt.ten_tac_gia SEPARATOR ', ')
          FROM bien_muc_tac_gia bt
          WHERE bt.ma_bien_muc = bms.ma_bien_muc
        ) AS tac_gia,
        (
          SELECT JSON_ARRAYAGG(JSON_OBJECT('loai_file', loai_file, 'duong_dan', duong_dan))
          FROM bien_muc_tai_lieu_dinh_kem btdk
          WHERE btdk.ma_bien_muc = bms.ma_bien_muc
        ) AS tai_lieu_dinh_kem,
        (
          SELECT COUNT(*)
          FROM sach s
          WHERE s.ISBN = bms.isbn
        ) AS so_dau_sach,
        (
          SELECT SUM(bs.gia_mua)
          FROM sach s
          JOIN ban_sao_sach bs ON bs.ma_sach = s.ma_sach
          WHERE s.ISBN = bms.isbn
        ) AS tong_gia_tri
      FROM bien_muc_sach bms
      LEFT JOIN danh_muc dm ON dm.ma_danh_muc = bms.ma_danh_muc
      ${whereClause}
      ORDER BY bms.ma_bien_muc DESC
      LIMIT ${limitNum} OFFSET ${offsetNum}
    `;

    const [rows] = await conn.query(query, params);

    // ✅ Kết quả trả về
    res.json({
      total,
      totalPages: Math.ceil(total / limitNum),
      currentPage: pageNum,
      data: rows,
    });
  } catch (err) {
    console.error("❌ Lỗi getAllBienMucFull:", err);
    res.status(500).json({
      message: "Lỗi khi lấy danh sách biên mục đầy đủ",
      error: err.message,
    });
  } finally {
    conn.release();
  }
};

// ==================== CHI TIẾT BIÊN MỤC ĐẦY ĐỦ ====================
exports.getBienMucFullById = async (req, res) => {
  const conn = await pool.getConnection();
  try {
    const { id } = req.params;
    const [results] = await conn.query("CALL GetBienMucFullById(?)", [id]);

    // MySQL trả về nhiều result set
    const bienMuc = results[0][0];
    const tacGia = results[1].map((r) => r.ten_tac_gia);
    const taiLieu = results[2];
    const sach = results[3];
    const banSao = results[4];

    if (!bienMuc) {
      return res.status(404).json({ message: "Không tìm thấy biên mục" });
    }

    res.json({
      ...bienMuc,
      tac_gia: tacGia,
      tai_lieu_dinh_kem: taiLieu,
      danh_sach_sach: sach,
      danh_sach_ban_sao: banSao,
    });
  } catch (err) {
    console.error("❌ Lỗi GetBienMucFullById:", err);
    res.status(500).json({
      message: "Lỗi khi lấy chi tiết biên mục đầy đủ",
      error: err.message,
    });
  } finally {
    conn.release();
  }
};

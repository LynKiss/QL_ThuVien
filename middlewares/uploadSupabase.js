const multer = require("multer");
const supabase = require("../common/supabase");
const path = require("path");
const fs = require("fs");

const upload = multer({ dest: "temp/" }); // lưu tạm

async function uploadToSupabase(req, res, next) {
  if (!req.files || !req.files.pdf || !req.files.pdf[0]) return next();

  const file = req.files.pdf[0];
  const filePath = file.path;
  const fileExt = path.extname(file.originalname);
  const fileName = `${Date.now()}_${file.originalname}`;

  const { data, error } = await supabase.storage
    .from("QLTV") // 📦 bucket bạn phải tạo sẵn trong Supabase (tên là 'pdfs')
    .upload(fileName, fs.createReadStream(filePath), {
      contentType: file.mimetype,
      upsert: true,
    });

  fs.unlinkSync(filePath); // xóa file tạm

  if (error) {
    console.error("❌ Lỗi upload Supabase:", error);
    return res.status(500).json({ message: "Lỗi upload file PDF" });
  }

  const { data: urlData } = supabase.storage
    .from("QLTV")
    .getPublicUrl(fileName);
  req.files.pdf[0].supabaseUrl = urlData.publicUrl; // gắn URL để controller sử dụng
  next();
}

module.exports = { upload, uploadToSupabase };

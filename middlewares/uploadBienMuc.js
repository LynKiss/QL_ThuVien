// middlewares/uploadBienMuc.js
const multer = require("multer");
const path = require("path");
const fs = require("fs");
const { CloudinaryStorage } = require("multer-storage-cloudinary");
const cloudinary = require("../common/cloudinary");
const supabase = require("../common/supabase");

// Cloudinary cho ảnh bìa
const cloudinaryStorage = new CloudinaryStorage({
  cloudinary,
  params: {
    folder: "QLTV/hinh_bia",
    allowed_formats: ["jpg", "jpeg", "png"],
  },
});

// Dùng diskStorage tạm cho PDF (sẽ upload Supabase sau)
const tempStorage = multer.diskStorage({
  destination: "temp/",
  filename: (req, file, cb) => cb(null, `${Date.now()}_${file.originalname}`),
});

const upload = multer({
  storage: tempStorage,
  limits: { fileSize: 20 * 1024 * 1024 },
}).fields([
  { name: "pdf", maxCount: 1 },
  { name: "hinh_bia", maxCount: 1 },
  { name: "anh_chung_tu", maxCount: 1 },
]);

// Middleware xử lý upload Supabase và Cloudinary sau khi multer hoàn tất
async function handleUploads(req, res, next) {
  try {
    // Upload PDF lên Supabase
    if (req.files?.pdf?.[0]) {
      const file = req.files.pdf[0];
      const fileBuffer = fs.readFileSync(file.path);
      const fileName = `pdf/${Date.now()}_${file.originalname}`;

      const { data, error } = await supabase.storage
        .from("QLTV")
        .upload(fileName, fileBuffer, {
          contentType: file.mimetype,
          upsert: true,
        });

      fs.unlinkSync(file.path); // xóa file tạm

      if (error) throw error;

      const { data: urlData } = supabase.storage
        .from("QLTV")
        .getPublicUrl(fileName);
      req.files.pdf[0].supabaseUrl = urlData.publicUrl;
    }

    // Upload ảnh bìa lên Cloudinary
    if (req.files?.hinh_bia?.[0]) {
      const file = req.files.hinh_bia[0];
      console.log("🔄 Đang upload ảnh bìa lên Cloudinary:", file.originalname);
      const result = await cloudinary.uploader.upload(file.path, {
        folder: "QLTV/hinh_bia",
        allowed_formats: ["jpg", "jpeg", "png"],
      });
      console.log("✅ Upload thành công, public_id:", result.public_id);

      fs.unlinkSync(file.path); // xóa file tạm
      req.files.hinh_bia[0].cloudinaryUrl = result.secure_url;
      req.files.hinh_bia[0].publicId = result.public_id;
      console.log(
        "📝 Đã set publicId vào req.files:",
        req.files.hinh_bia[0].publicId
      );
    } else {
      console.log("⚠️ Không có file hinh_bia để upload");
    }

    // Upload ảnh chứng từ lên Cloudinary
    if (req.files?.anh_chung_tu?.[0]) {
      const file = req.files.anh_chung_tu[0];
      const result = await cloudinary.uploader.upload(file.path, {
        folder: "QLTV/anh_chung_tu",
        allowed_formats: ["jpg", "jpeg", "png"],
      });

      fs.unlinkSync(file.path); // xóa file tạm
      req.files.anh_chung_tu[0].cloudinaryUrl = result.secure_url;
    }

    next();
  } catch (err) {
    console.error("❌ Lỗi upload file:", err);
    res.status(500).json({ message: "Lỗi upload file", error: err.message });
  }
}

module.exports = { upload, handleUploads };

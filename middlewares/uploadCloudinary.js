const multer = require("multer");
const { CloudinaryStorage } = require("multer-storage-cloudinary");
const cloudinary = require("../common/cloudinary"); // file config cloudinary

// Cấu hình storage cho multer-storage-cloudinary
const storage = new CloudinaryStorage({
  cloudinary,
  params: {
    folder: "user_updates", // thư mục trên Cloudinary
    allowed_formats: ["jpg", "jpeg", "png"],
    transformation: [{ width: 400, height: 400, crop: "fill" }], // resize avatar 400x400
  },
});

// Middleware multer với giới hạn file size 5MB
const upload = multer({
  storage,
  limits: { fileSize: 5 * 1024 * 1024 }, // tối đa 5MB
});

module.exports = upload;

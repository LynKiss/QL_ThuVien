const multer = require("multer");
const { CloudinaryStorage } = require("multer-storage-cloudinary");
const cloudinary = require("../common/cloudinary");

const storage = new CloudinaryStorage({
  cloudinary,
  params: {
    folder: "QLTV/images",
    allowed_formats: ["jpg", "jpeg", "png"],
    transformation: [{ width: 400, height: 400, crop: "fill" }],
  },
});

const uploadCloudinary = multer({
  storage,
  limits: { fileSize: 5 * 1024 * 1024 },
});

module.exports = uploadCloudinary;

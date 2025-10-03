// controllers/nguoi_dung.controller.js
const Nguoi_dung = require("../models/nguoi_dung.model");
const cloudinary = require("../common/cloudinary"); // v2

const fmtDateOnly = (d) => {
  if (!d) return null;
  const dt = new Date(d);
  if (isNaN(dt)) return null;
  return dt.toISOString().slice(0, 10); // YYYY-MM-DD
};
const fmtDateTime = (d) => {
  if (!d) return null;
  const dt = new Date(d);
  if (isNaN(dt)) return null;
  return dt.toISOString().slice(0, 19).replace("T", " "); // YYYY-MM-DD HH:MM:SS
};

module.exports = {
  getAll: (req, res) => {
    Nguoi_dung.getAll((err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi server", error: err.message });
      }
      res.json(result);
    });
  },

  getById: (req, res) => {
    const id = req.params.id;
    Nguoi_dung.getById(id, (err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi server", error: err.message });
      }
      if (!result)
        return res.status(404).json({ message: "Không tìm thấy user" });

      result.ngay_sinh = fmtDateOnly(result.ngay_sinh);
      result.han_the = fmtDateOnly(result.han_the);
      result.ngay_dang_ky = result.ngay_dang_ky
        ? fmtDateTime(result.ngay_dang_ky)
        : null;

      res.json(result);
    });
  },

  insert: (req, res) => {
    const nguoi_dung = req.body || {};

    // normalize file fields (multer-storage-cloudinary gives .path and .filename)
    if (req.file) {
      const fileUrl =
        req.file.path ||
        req.file.url ||
        req.file.secure_url ||
        req.file.location ||
        null;
      const filePublicId =
        req.file.filename || req.file.public_id || req.file.key || null;
      if (fileUrl) nguoi_dung.avatar = fileUrl;
      if (filePublicId) nguoi_dung.avatar_public_id = filePublicId;
    }

    Nguoi_dung.insert(nguoi_dung, (err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi khi thêm người dùng", error: err.message });
      }
      res.status(201).json(result);
    });
  },

  update: (req, res) => {
    const nguoi_dung = req.body || {};
    const id = req.params.id;
    const userRole =
      req.user && typeof req.user.ma_vai_tro !== "undefined"
        ? req.user.ma_vai_tro
        : 1;
    nguoi_dung.user_role =
      typeof nguoi_dung.user_role !== "undefined"
        ? nguoi_dung.user_role
        : userRole;

    // normalize uploaded file
    if (req.file) {
      const fileUrl =
        req.file.path ||
        req.file.url ||
        req.file.secure_url ||
        req.file.location ||
        null;
      const filePublicId =
        req.file.filename || req.file.public_id || req.file.key || null;
      if (fileUrl) nguoi_dung.avatar = fileUrl;
      if (filePublicId) nguoi_dung.avatar_public_id = filePublicId;
      console.log(
        "DEBUG resolved fileUrl:",
        fileUrl,
        "filePublicId:",
        filePublicId
      );
    }

    // permission check for non-admin
    if (userRole !== 1) {
      const allowedFields = [
        "ho_ten",
        "email",
        "mat_khau",
        "ngay_sinh",
        "dia_chi",
        "so_dien_thoai",
        "anh_dai_dien",
        "avatar",
        "avatar_public_id",
      ];
      const invalidFields = Object.keys(nguoi_dung).filter(
        (f) => !allowedFields.includes(f)
      );
      if (invalidFields.length > 0) {
        return res.status(403).json({
          message:
            "Bạn không có quyền thay đổi các trường: " +
            invalidFields.join(", "),
        });
      }
    }

    // get current to know old public id
    Nguoi_dung.getById(id, (errGet, currentRow) => {
      if (errGet) {
        console.error(errGet);
        return res
          .status(500)
          .json({ message: "Lỗi server", error: errGet.message });
      }
      if (!currentRow)
        return res.status(404).json({ message: "Người dùng không tồn tại" });

      const oldPublicId = currentRow.avatar_public_id || null;
      const newPublicId = nguoi_dung.avatar_public_id || null;

      Nguoi_dung.update(nguoi_dung, id, (errUpdate, updated) => {
        if (errUpdate) {
          console.error("DB update error:", errUpdate);
          // cleanup new uploaded image on DB error
          if (req.file && (req.file.filename || req.file.public_id)) {
            const newId = req.file.filename || req.file.public_id;
            cloudinary.uploader
              .destroy(newId, { resource_type: "image" })
              .then(() =>
                console.log("Deleted uploaded image due to DB error:", newId)
              )
              .catch((e) =>
                console.warn(
                  "Failed to delete uploaded image after DB error:",
                  e.message || e
                )
              );
          }
          const status = errUpdate.sqlState === "45000" ? 400 : 500;
          return res.status(status).json({
            message: "Lỗi khi cập nhật người dùng",
            error: errUpdate.message,
          });
        }

        // delete old avatar if different
        if (oldPublicId && oldPublicId !== newPublicId) {
          cloudinary.uploader
            .destroy(oldPublicId, { resource_type: "image" })
            .then(() => console.log("Deleted old avatar:", oldPublicId))
            .catch((e) =>
              console.warn("Failed to delete old avatar:", e.message || e)
            );
        }

        if (updated) {
          updated.ngay_sinh = fmtDateOnly(updated.ngay_sinh);
          updated.han_the = fmtDateOnly(updated.han_the);
          updated.ngay_dang_ky = updated.ngay_dang_ky
            ? fmtDateTime(updated.ngay_dang_ky)
            : null;
        }

        return res.json({ message: "Cập nhật thành công", data: updated });
      });
    });
  },

  delete: (req, res) => {
    const id = req.params.id;
    Nguoi_dung.getById(id, (errGet, row) => {
      if (errGet) {
        console.error(errGet);
        return res
          .status(500)
          .json({ message: "Lỗi server", error: errGet.message });
      }
      if (!row)
        return res.status(404).json({ message: "Người dùng không tồn tại" });

      Nguoi_dung.delete(id, (err, result) => {
        if (err) {
          console.error(err);
          return res
            .status(500)
            .json({ message: "Lỗi khi xóa người dùng", error: err.message });
        }
        if (row.avatar_public_id) {
          cloudinary.uploader
            .destroy(row.avatar_public_id, { resource_type: "image" })
            .then(() =>
              console.log(
                "Deleted avatar after user delete:",
                row.avatar_public_id
              )
            )
            .catch((e) =>
              console.warn(
                "Failed to delete avatar after user delete:",
                e.message || e
              )
            );
        }
        res.json({
          message: `Xóa người dùng ma_nguoi_dung = ${id} thành công`,
        });
      });
    });
  },

  search: (req, res) => {
    const keyword = req.body.keyword || "";
    Nguoi_dung.search(keyword, (err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi khi tìm kiếm", error: err.message });
      }
      res.json(result);
    });
  },

  advancedSearch: (req, res) => {
    const params = req.body || {};
    Nguoi_dung.advancedSearch(params, (err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi khi tìm kiếm nâng cao", error: err.message });
      }
      res.json(result);
    });
  },

  getProfile: (req, res) => {
    const id = req.params.id;
    Nguoi_dung.getProfile(id, (err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi server", error: err.message });
      }
      if (!result)
        return res.status(404).json({ message: "Không tìm thấy user" });
      result.ngay_sinh = fmtDateOnly(result.ngay_sinh);
      result.han_the = fmtDateOnly(result.han_the);
      result.ngay_dang_ky = result.ngay_dang_ky
        ? fmtDateTime(result.ngay_dang_ky)
        : null;
      res.json(result);
    });
  },

  getMe: (req, res) => {
    const id = req.user && (req.user.id || req.user.ma_nguoi_dung);
    if (!id) return res.status(401).json({ message: "Không xác thực" });
    Nguoi_dung.getProfile(id, (err, result) => {
      if (err) {
        console.error(err);
        return res
          .status(500)
          .json({ message: "Lỗi server", error: err.message });
      }
      if (!result)
        return res.status(404).json({ message: "Không tìm thấy user" });
      result.ngay_sinh = fmtDateOnly(result.ngay_sinh);
      result.han_the = fmtDateOnly(result.han_the);
      result.ngay_dang_ky = result.ngay_dang_ky
        ? fmtDateTime(result.ngay_dang_ky)
        : null;
      res.json(result);
    });
  },
  getHome: (req, res) => {
    const id = req.params.id;
    Nguoi_dung.getHome(id, (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).json({
          message: "Lỗi khi lấy dữ liệu HomeScreen",
          error: err.message,
        });
      }
      if (!result || !result.user)
        return res.status(404).json({ message: "Không tìm thấy user" });

      res.json(result);
    });
  },
};

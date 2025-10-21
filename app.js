const express = require("express");

const app = express();
const port = process.env.PORT || 3001;
const cors = require("cors");

app.use(express.json());
app.use(cors());

const chiTietDatMuonRoutes = require("./routes/chi_tiet_dat_muon.route");
const chiTietMuonRoutes = require("./routes/chi_tiet_muon.route");
const danhGiaRoutes = require("./routes/danh_gia.route");
const danhMucRoutes = require("./routes/danh_muc.route");
const datMuonRoutes = require("./routes/dat_muon.route");
const khuVucRoutes = require("./routes/khu_vuc.route");
const ngonNguRoutes = require("./routes/ngon_ngu.route");
const nguoiDungRoutes = require("./routes/nguoi_dung.route");
const nhaCungCapRoutes = require("./routes/nha_cung_cap.route");
const nhaXuatBanRoutes = require("./routes/nha_xuat_ban.route");
const nhatKyHeThongRoutes = require("./routes/nhat_ky_he_thong.route");
const phieuMuonRoutes = require("./routes/phieu_muon.route");
const phieuTraRoutes = require("./routes/phieu_tra.route");
const sachRoutes = require("./routes/sach.route");
const theLoaiRoutes = require("./routes/the_loai.route");
const tinNhanRoutes = require("./routes/tin_nhan.route");
const vaiTroRoutes = require("./routes/vai_tro.route");
const quanLyRoutes = require("./routes/quan_ly.route");
const authRoutes = require("./routes/auth.route");
const sachYeuThichRoutes = require("./routes/sachYeuThich.route");
const datMuonFlowRoutes = require("./routes/datMuonFlow.route");
const hotroRoutes = require("./routes/ho_tro.routes");
const chatRoute = require("./routes/chat.route");
const bienMucRoutes = require("./routes/bien_muc.route");
const paymentRoutes = require("./routes/payment.route");
const phatRoutes = require("./routes/phat.routes");
const notificationRoutes = require("./routes/notification.route");
const trangThaiNguoiDungRoutes = require("./routes/trang_thai_nguoi_dung.route");
const yeuCauTraRoutes = require("./routes/yeu_cau_tra.route");
const banSaoSachRoutes = require("./routes/ban_sao_sach.route");
const bienMucTacGiaRoutes = require("./routes/bien_muc_tac_gia.route");
const bienMucTaiLieuDinhKemRoutes = require("./routes/bien_muc_tai_lieu_dinh_kem.route");
const cauHinhRoutes = require("./routes/cau_hinh.route");

app.use("/api/payment", paymentRoutes);
app.use("/api/phat", phatRoutes);
app.use("/api/notifications", notificationRoutes);
app.use("/api/trang-thai-nguoi-dung", trangThaiNguoiDungRoutes);
app.use("/api/yeu-cau-tra", yeuCauTraRoutes);
app.use("/api/ban_sao_sach", banSaoSachRoutes);
app.use("/api/bien_muc_tac_gia", bienMucTacGiaRoutes);
app.use("/api/bien_muc_tai_lieu_dinh_kem", bienMucTaiLieuDinhKemRoutes);
app.use("/api/cau_hinh", cauHinhRoutes);

app.use("/api/bienmuc", bienMucRoutes);

app.use("/api/chat", chatRoute);

// Use routes
app.use("/api/ho_tro", hotroRoutes);
app.use("/api", datMuonFlowRoutes); // /api/dat-muon (flow gộp)
app.use("/api/sach_yeu_thich", sachYeuThichRoutes);
app.use("/api/chi_tiet_dat_muon", chiTietDatMuonRoutes);
app.use("/api/chi_tiet_muon", chiTietMuonRoutes);
app.use("/api/danh_gia", danhGiaRoutes);
app.use("/api/danh_muc", danhMucRoutes);
app.use("/api/dat_muon", datMuonRoutes);
app.use("/api/khu_vuc", khuVucRoutes);
app.use("/api/ngon_ngu", ngonNguRoutes);
app.use("/api/nguoi_dung", nguoiDungRoutes);
app.use("/api/nha_cung_cap", nhaCungCapRoutes);
app.use("/api/nha_xuat_ban", nhaXuatBanRoutes);
app.use("/api/nhat_ky_he_thong", nhatKyHeThongRoutes);
app.use("/api/phieu_muon", phieuMuonRoutes);
app.use("/api/phieu_tra", phieuTraRoutes);
app.use("/api/sach", sachRoutes);
app.use("/api/the_loai", theLoaiRoutes);
app.use("/api/tin_nhan", tinNhanRoutes);
app.use("/api/vai_tro", vaiTroRoutes);
app.use("/quan-ly", quanLyRoutes);
app.use("/api/auth", authRoutes);

app.listen(port, "0.0.0.0", () => {
  console.log(`Server chạy trên cổng ${port}`);
});

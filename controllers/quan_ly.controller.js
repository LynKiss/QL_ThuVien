const QuanLy = require("../models/quan_ly.model");

module.exports = {
  getSachMuonNhieuNhat: (req, res) => {
    QuanLy.getSachMuonNhieuNhat((result) => {
      res.send(result);
    });
  },
  getMuonTraStats: (req, res) => {
    QuanLy.getMuonTraStats((result) => {
      res.send(result);
    });
  },
  getSachCountByTheLoai: (req, res) => {
    QuanLy.getSachCountByTheLoai((result) => {
      res.send(result);
    });
  },
  getTopNguoiMuon: (req, res) => {
    QuanLy.getTopNguoiMuon((result) => {
      res.send(result);
    });
  },
  getTonKhoSach: (req, res) => {
    QuanLy.getTonKhoSach((result) => {
      res.send(result);
    });
  },
  getSachStatsByTheLoaiNam: (req, res) => {
    QuanLy.getSachStatsByTheLoaiNam((result) => {
      res.send(result);
    });
  },
  getNguoiMuonTichCuc: (req, res) => {
    QuanLy.getNguoiMuonTichCuc((result) => {
      res.send(result);
    });
  },
  baoCaoTonKhoSach: (req, res) => {
    QuanLy.baoCaoTonKhoSach((result) => {
      res.send(result);
    });
  },
  thongKeSachTheoNXB: (req, res) => {
    QuanLy.thongKeSachTheoNXB((result) => {
      res.send(result);
    });
  },
  getRankingByBorrowCount: (req, res) => {
    QuanLy.getRankingByBorrowCount((result) => {
      res.send(result);
    });
  },
  getRankingByFavorites: (req, res) => {
    QuanLy.getRankingByFavorites((result) => {
      res.send(result);
    });
  },
  getOverallRanking: (req, res) => {
    QuanLy.getOverallRanking((result) => {
      res.send(result);
    });
  },
  updateUserScores: (req, res) => {
    QuanLy.updateUserScores((result) => {
      res.send(result);
    });
  },
};

const mysql = require("mysql2/promise");

const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "250904",
  database: "quan_ly_thu_vien_merged",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
  namedPlaceholders: true,
  timezone: "+07:00",
  charset: "utf8mb4_general_ci",
});

// ✅ Wrapper hỗ trợ code cũ (callback) và code mới (Promise)
const db = {
  pool, // 👉 export thêm pool gốc để getConnection() dùng được
  query(sql, params, callback) {
    if (typeof params === "function") {
      callback = params;
      params = [];
    }

    if (callback) {
      pool
        .query(sql, params)
        .then(([rows]) => callback(null, rows))
        .catch((err) => callback(err));
    } else {
      return pool.query(sql, params);
    }
  },
};

// ✅ Export đầy đủ
module.exports = db;

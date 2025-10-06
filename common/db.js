const mysql = require("mysql2/promise");

const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "250904",
  database: "quan_ly_thu_vien_merged",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

// ✅ Wrapper giúp hỗ trợ cả callback cũ và Promise mới
const db = {
  query(sql, params, callback) {
    if (typeof params === "function") {
      callback = params;
      params = [];
    }

    // Nếu người gọi dùng callback (code cũ)
    if (callback) {
      pool
        .query(sql, params)
        .then(([rows]) => callback(null, rows))
        .catch((err) => callback(err));
    }
    // Nếu người gọi dùng await (code mới)
    else {
      return pool.query(sql, params);
    }
  },
};

module.exports = db;

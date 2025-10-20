# TODO: Tạo API bảng xếp hạng người dùng

## 1. Cập nhật quan_ly.model.js
- [x] Thêm method getRankingByBorrowCount: Xếp hạng theo số lượt mượn sách (dựa trên phieu_muon)
- [x] Thêm method getRankingByFavorites: Xếp hạng theo số sách yêu thích (dựa trên sach_yeu_thich)
- [x] Thêm method getOverallRanking: Xếp hạng tổng hợp (mượn + yêu thích - phạt)
- [x] Thêm method updateUserScores: Cập nhật điểm số trong user_rank

## 2. Cập nhật quan_ly.controller.js
- [x] Thêm getRankingByBorrowCount
- [x] Thêm getRankingByFavorites
- [x] Thêm getOverallRanking
- [x] Thêm updateUserScores

## 3. Cập nhật quan_ly.route.js
- [x] Thêm route GET /quan-ly/ranking/borrow-count
- [x] Thêm route GET /quan-ly/ranking/favorites
- [x] Thêm route GET /quan-ly/ranking/overall
- [x] Thêm route PUT /quan-ly/ranking/update-scores

## 4. Test các API
- [x] Test từng endpoint để đảm bảo hoạt động đúng

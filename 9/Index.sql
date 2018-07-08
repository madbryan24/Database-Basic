USE SimpleQuery
GO

-- tăng tốc độ truy vấn >< giảm tốc độ chỉnh sửa thông tin
CREATE INDEX index1 ON dbo.NGUOITHAN(MAGV)

-- không cho phép các trường hợp trùng nhau : thêm UNIQUE
CREATE UNIQUE INDEX index2 ON dbo.table2
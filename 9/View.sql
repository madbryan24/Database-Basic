USE SimpleQuery
GO

-- view là bảng ảo
-- view tự cập nhật khi bảng gốc n tham chiếu thay đổi

CREATE VIEW testView AS 
SELECT * FROM dbo.GIAOVIEN

UPDATE GIAOVIEN
SET LUONG = 1900 
WHERE MAGV = '006'

-- tạo hoặc thay thế VIEW
ALTER VIEW testView AS 
SELECT GIAOVIEN.MAGV FROM dbo.GIAOVIEN

-- tạo view tiếng việt
CREATE VIEW [Giáo Viên] AS 
SELECT * FROM dbo.GIAOVIEN


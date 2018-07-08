USE SimpleQuery
GO

-- lấy thông tin từ bảng GV với điều kiện, đưa kết quả vào bảng mới 
SELECT dbo.GIAOVIEN.MAGV, dbo.GIAOVIEN.HOTEN INTO selectInto1
FROM dbo.GIAOVIEN
WHERE dbo.GIAOVIEN.LUONG >= 2500

-- lấy dữ liệu từ 2 bảng
SELECT dbo.GIAOVIEN.HOTEN,dbo.BOMON.TENBM INTO selectInto2
FROM dbo.GIAOVIEN LEFT JOIN dbo.BOMON
ON dbo.GIAOVIEN.MABM = dbo.BOMON.MABM
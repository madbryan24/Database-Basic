USE SimpleQuery
GO

-- gom 2 bảng lại theo điều kiện, bên nào không có dữ liệu thì để NULL
SELECT dbo.GIAOVIEN.HOTEN,dbo.BOMON.TENBM
FROM dbo.GIAOVIEN FULL OUTER JOIN dbo.BOMON
ON dbo.GIAOVIEN.MABM = dbo.BOMON.MABM
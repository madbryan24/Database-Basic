USE SimpleQuery
GO

-- gom 2 bảng lại theo điều kiện, bên nào không có dữ liệu thì để NULL

-- LEFT join giữ lại tất cả các record bảng bên trái, bảng bên phải nhập vào bảng bên trái
SELECT dbo.GIAOVIEN.HOTEN,dbo.BOMON.TENBM
FROM dbo.GIAOVIEN LEFT JOIN dbo.BOMON
ON dbo.GIAOVIEN.MABM = dbo.BOMON.MABM

-- right join giữ lại tất cả các record bảng bên phải, bảng bên trái nhập vào bảng bên phải
SELECT dbo.GIAOVIEN.HOTEN,dbo.BOMON.TENBM
FROM dbo.GIAOVIEN right JOIN dbo.BOMON
ON dbo.GIAOVIEN.MABM = dbo.BOMON.MABM
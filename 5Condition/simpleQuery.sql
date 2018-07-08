USE SimpleQuery
GO

-- lấy hết tất cả
SELECT *
FROM BoMon

-- lấy các cột
SELECT MABM, TENBM
FROM dbo.BOMON

-- thay đổi tên cột hiện thị
SELECT MABM AS N'Mã Bộ Môn', TENBM AS N'Tên Bộ Môn'
FROM dbo.BOMON

-- truy vấn từ nhiều bảng
SELECT TENBM AS N'Tên Bộ Môn', HOTEN AS N'Họ Tên'
FROM dbo.BOMON, dbo.GIAOVIEN

-- truy vấn từ nhiều bảng và chọn chính xác cột của bảng nào
SELECT dbo.GIAOVIEN.HOTEN AS N'Họ Tên',BOMON.MABM AS N'Mã Bộ Môn',dbo.BOMON.TENBM AS N'Tên Bộ Môn'
FROM dbo.BOMON, dbo.GIAOVIEN

-- ký hiệu tên bảng
SELECT GV.HOTEN AS N'Họ Tên',BM.MABM AS N'Mã Bộ Môn',BM.TENBM AS N'Tên Bộ Môn'
FROM dbo.BOMON AS BM, dbo.GIAOVIEN AS GV
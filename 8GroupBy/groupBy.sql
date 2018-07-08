USE SimpleQuery
GO

-- lấy ra tên bộ môn và số lượng giáo viên
-- tên sẽ sắp xếp theo cột cuối cùng trong group by
-- cách 1
SELECT dbo.BOMON.TENBM, dbo.BOMON.MAKHOA, COUNT(*) AS Number
FROM dbo.BOMON JOIN dbo.GIAOVIEN
ON GIAOVIEN.MABM = BOMON.MABM
GROUP BY dbo.BOMON.TENBM, dbo.BOMON.MAKHOA

-- cách 2
SELECT dbo.BOMON.TENBM, dbo.BOMON.MAKHOA, COUNT(*) AS Number
FROM dbo.BOMON JOIN dbo.GIAOVIEN
ON GIAOVIEN.MABM = BOMON.MABM
GROUP BY dbo.BOMON.MAKHOA, dbo.BOMON.TENBM

-- lấy thông tin giáo viên có lương lớn hơn lương trung bình
-- cách 1
SELECT dbo.GIAOVIEN.*
FROM dbo.GIAOVIEN
WHERE dbo.GIAOVIEN.LUONG > (SELECT SUM(LUONG) FROM dbo.GIAOVIEN) / (SELECT COUNT(*) FROM dbo.GIAOVIEN)
-- cách 2
SELECT dbo.GIAOVIEN.*
FROM dbo.GIAOVIEN
WHERE dbo.GIAOVIEN.LUONG > (SELECT AVG(LUONG) FROM dbo.GIAOVIEN)


-- giáo viên và số lượng đề tài
SELECT dbo.GIAOVIEN.MAGV, dbo.GIAOVIEN.HOTEN, COUNT(*) AS Num
FROM dbo.GIAOVIEN JOIN dbo.THAMGIADT
ON dbo.GIAOVIEN.MAGV = dbo.THAMGIADT.MAGV 
GROUP BY dbo.GIAOVIEN.MAGV, dbo.GIAOVIEN.HOTEN

-- giáo viên và số lượng đề tài và đề tài đạt
SELECT dbo.GIAOVIEN.MAGV, dbo.GIAOVIEN.HOTEN, COUNT(*) AS Num
FROM dbo.GIAOVIEN JOIN dbo.THAMGIADT
ON dbo.GIAOVIEN.MAGV = dbo.THAMGIADT.MAGV 
AND dbo.THAMGIADT.KETQUA = N'Đạt'
GROUP BY dbo.GIAOVIEN.MAGV, dbo.GIAOVIEN.HOTEN

-- lấy ra thông tin khoa có số lượng giáo viên lớn nhất 
SELECT dbo.BOMON.MAKHOA, COUNT(*) AS Number INTO groupBy1
FROM dbo.BOMON JOIN dbo.GIAOVIEN
ON GIAOVIEN.MABM = BOMON.MABM
GROUP BY dbo.BOMON.MAKHOA

SELECT groupBy1.MAKHOA, groupBy1.Number
FROM groupBy1
WHERE groupBy1.Number = (SELECT MAX(groupBy1.Number) FROM groupBy1)

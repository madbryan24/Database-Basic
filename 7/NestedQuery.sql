USE SimpleQuery
GO

-- tìm giáo viên có mã GV 001 và là GVQLCM

SELECT *
FROM dbo.GIAOVIEN
WHERE MAGV = '001'
AND MAGV IN (
	SELECT GVQLCM
	FROM dbo.GIAOVIEN
)

-- tìm giáo viên có mã GV 005 và KHÔNG là GVQLCM
SELECT *
FROM dbo.GIAOVIEN
WHERE MAGV = '005'
AND MAGV NOT IN (
	SELECT GVQLCM	
	FROM dbo.GIAOVIEN
)

-- truy vấn lồng trong FROM, tạo ra 1 bảng mới và tìm kiếm trong bảng đó
SELECT *
FROM dbo.GIAOVIEN JOIN (SELECT * FROM dbo.BOMON) AS BM
ON BM.MABM = GIAOVIEN.MABM

-- lấy giáo viên tham gia nhiều hơn 1 đề tài
SELECT * 
FROM dbo.GIAOVIEN AS GV
WHERE 1 < (
	SELECT COUNT(*)
	FROM dbo.THAMGIADT 
	WHERE MAGV = GV.MAGV
)

-- lấy ra các khoa có nhiều hơn 2 bộ môn
SELECT *
FROM dbo.KHOA AS K
WHERE 2 < (
	SELECT COUNT(*)
	FROM dbo.BOMON
	WHERE dbo.BOMON.MAKHOA = K.MAKHOA
)

-- lấy ra các khoa có nhiều hơn 2 giáo viên
SELECT *
FROM dbo.KHOA AS K
WHERE 1 < (
	SELECT COUNT(*)
	FROM dbo.GIAOVIEN AS GV INNER JOIN dbo.BOMON AS BM
	ON BM.MAKHOA = K.MAKHOA
	AND GV.MABM = BM.MABM	
)

-- tìm ra danh sách giáo viên có tuổi > 50% giáo viên
SELECT GV.MAGV, YEAR(GETDATE()) - YEAR(GV.NGSINH)  AS TUOI INTO nested1
FROM dbo.GIAOVIEN AS GV

SELECT GV.MAGV, 0 AS TUOI INTO nested3
FROM dbo.GIAOVIEN AS GV
WHERE 0 = 1
INSERT INTO nested3
SELECT * INTO nested4
FROM nested1
ORDER BY TUOI DESC

SELECT COUNT(*) AS Num
FROM nested1

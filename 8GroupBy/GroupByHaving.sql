USE SimpleQuery
GO

-- HAVING là where của group by
-- lấy ra tên bộ môn và số lượng giáo viên lớn hơn 1
SELECT dbo.BOMON.TENBM, dbo.BOMON.MAKHOA, COUNT(*) AS Number
FROM dbo.BOMON JOIN dbo.GIAOVIEN
ON GIAOVIEN.MABM = BOMON.MABM
GROUP BY dbo.BOMON.TENBM, dbo.BOMON.MAKHOA
HAVING COUNT(*) > 1
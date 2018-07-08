USE SimpleQuery
GO

-- gom 2 bảng lại k có điều kiện, nhóm từng record của bảng 1 vào all record bảng 2
SELECT dbo.GIAOVIEN.HOTEN,dbo.BOMON.TENBM
FROM dbo.GIAOVIEN CROSS JOIN dbo.BOMON
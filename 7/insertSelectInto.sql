USE SimpleQuery
GO

-- thêm vào 1 bảng đã cho trước 
SELECT * INTO insertSelectInto1
FROM dbo.GIAOVIEN
WHERE 1 = 0 

INSERT INTO insertSelectInto1
SELECT * FROM dbo.GIAOVIEN

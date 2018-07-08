USE SimpleQuery
GO

-- tìm tên mà có xuất hiện chữ l ở đầu
SELECT *
FROM dbo.GIAOVIEN
WHERE HOTEN LIKE 'l%'

-- tìm tên mà có xuất hiện chữ n ở đầu
SELECT *
FROM dbo.GIAOVIEN
WHERE HOTEN LIKE '%n'

-- tìm tên mà có xuất hiện chữ n 
SELECT *
FROM dbo.GIAOVIEN
WHERE HOTEN LIKE '%n%'

-- tìm tên mà có xuất hiện chữ n à
SELECT *
FROM dbo.GIAOVIEN
WHERE HOTEN LIKE N'%à%'
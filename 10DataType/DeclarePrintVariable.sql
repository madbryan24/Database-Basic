USE SimpleQuery
GO

-- đặt tên biến có thêm @ ở đầu
DECLARE @n INT = 1

-- set giá trị cho biến
SET @n = 1
SET @n = @n +1
SET @n += 1

--tạo giá trị bằng select 
DECLARE @minMAGV CHAR(10)
SELECT @minMAGV = dbo.GIAOVIEN.MAGV
FROM dbo.GIAOVIEN
WHERE LUONG = (SELECT MIN(dbo.GIAOVIEN.LUONG) FROM dbo.GIAOVIEN)

-- in ra màn hình
DECLARE @n1 INT  = 1
PRINT @n1
PRINT 13

-- tìm tuổi của giáo viên có lương thấp nhất
DECLARE @minMAGV CHAR(10)
SELECT @minMAGV = dbo.GIAOVIEN.MAGV
FROM dbo.GIAOVIEN
WHERE LUONG = (SELECT MIN(dbo.GIAOVIEN.LUONG) FROM dbo.GIAOVIEN)

DECLARE @tuoi INT 
SELECT YEAR(GETDATE()) - YEAR(dbo.GIAOVIEN.NGSINH)
FROM dbo.GIAOVIEN
WHERE dbo.GIAOVIEN.MAGV = @minMAGV
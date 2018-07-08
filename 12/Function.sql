USE SimpleQuery
GO

-- function phải sử dụng với select
-- tạo function
-- thay đổi thì thay CREATE bằng ALTER
-- return phải có chữ S
-- function luôn luôn phải có return
-- không thể dùng PRINT trong function

CREATE FUNCTION luongGV(@maGV CHAR(10) )
RETURNS INT
AS 
BEGIN
	DECLARE @luong INT
	SELECT @luong = LUONG
	FROM dbo.GIAOVIEN
	WHERE MAGV = @maGV
	RETURN @luong
END 
GO

--sử dụng nên dùng dbo
SELECT dbo.luongGV('001') AS Luong
SELECT dbo.luongGV(MAGV) FROM dbo.GIAOVIEN

-- xóa function
DROP FUNCTION dbo.luongGV


-- bt: tìm số tuổi và cho biết số tuổi đấy là lẻ hay chẵn
CREATE FUNCTION timTuoi(@year date)
RETURNS int
AS 
BEGIN 
	DECLARE @tuoi INT 
	SET @tuoi = YEAR(GETDATE()) - YEAR(@year)
	RETURN @tuoi
END 
GO 

CREATE FUNCTION checkTuoi(@tuoi int)
RETURNS nvarchar(50)
AS 
BEGIN 
	IF(@tuoi % 2 = 0)
		RETURN N'Chẵn'
	ELSE IF(@tuoi % 2 = 1)
		RETURN N'Lẻ'

	RETURN N'Không Xác Định'  -- phải có return ngoài If else
END 
GO 

SELECT dbo.timTuoi(NgSinh) AS N'Tuổi', dbo.checkTuoi(dbo.timTuoi(NGSINh)) AS CheckTuoi
FROM dbo.GIAOVIEN

DROP FUNCTION dbo.checkTuoi
DROP FUNCTION timTuoi
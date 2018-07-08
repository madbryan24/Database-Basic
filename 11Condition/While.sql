USE Test1
GO

-- test check là bảng autoIncrement bắt đầu từ 5 và tăng 10
-- lương > 2000 và nhỏ hơn 5000

DECLARE @i INT  = 0
DECLARE @n INT = 10000

WHILE (@i <= @n)
	BEGIN
		INSERT dbo.testCheck
		        ( Luong )
		VALUES  ( 3000 + 100*@i  -- Luong - int
		          ) 
		SET @i += 1
	END 

SELECT * FROM dbo.testCheck
	
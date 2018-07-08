USE SimpleQuery
GO

SELECT * INTO giaovien1 FROM dbo.GIAOVIEN
SELECT * FROM dbo.GIAOVIEN
SELECT * FROM giaovien1
-- DECLARE    Cursor    CURSOR FOR     SELECT  FROM 
-- OPEN Cursor
--		FETCH NEXT FROM GVCursor INTO @luong,@tuoi
--		WHILE @@FETCH_STATUS = 0
--		BEGIN .... END
-- CLOSE Cursor
-- DEALLOCATE Cursor

DECLARE GVCursor CURSOR FOR SELECT MAGV, YEAR(GETDATE()) - YEAR(NGSINH) FROM dbo.GIAOVIEN  --tạo con trỏ

OPEN GVCursor 
	DECLARE @maGV CHAR(10)
	DECLARE @tuoi INT

	FETCH NEXT FROM GVCursor INTO @maGV, @tuoi  -- duyệt con trỏ vào biến

	WHILE @@FETCH_STATUS = 0
	BEGIN 	
		IF(@tuoi > 40)
		BEGIN
			UPDATE giaovien1
			SET giaovien1.LUONG = 2500
			WHERE giaovien1.MAGV =@maGV
		END 

		ELSE IF (@tuoi < 40 AND @tuoi > 30)
		BEGIN
			UPDATE giaovien1
			SET giaovien1.LUONG = 2000
			WHERE giaovien1.MAGV =@maGV
		END 

		ELSE 
		BEGIN
			UPDATE giaovien1
			SET giaovien1.LUONG = 1500
			WHERE giaovien1.MAGV =@maGV
		END 

		FETCH NEXT FROM GVCursor INTO @maGV,@tuoi
	END 
CLOSE GVCursor
DEALLOCATE GVCursor
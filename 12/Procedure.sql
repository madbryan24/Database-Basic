USE SimpleQuery
GO

-- có th? s? d?ng PROC 1 mình nh?ng k s? d?ng ???c v?i select
CREATE PROC USP_Test
@maGV NVARCHAR(10), @luong INT
AS
BEGIN
	SELECT * 
	FROM dbo.GIAOVIEN
	WHERE MAGV = @maGV AND LUONG = @luong
END 
GO

EXEC dbo.USP_Test @maGV = N'001', -- nvarchar(10)
    @luong = 2000 -- int

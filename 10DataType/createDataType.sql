USE SimpleQuery
GO

-- tạo kiểu biến mới 
EXEC sp_addtype 'name','nvarchar(20)','not null'

CREATE TABLE test1(
	NAME NAME,
	ADDRESSs nvarchar(100)
)
 DROP TABLE Test1
-- xóa kiểu biến, kiểu biến k được dùng trong 1 bảng nào
EXEC sp_droptype 'name'
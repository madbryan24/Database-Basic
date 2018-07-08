
USE editTable
GO

-- delete table: xóa cả bảng
-- delete table where điều kiện để xóa tùy chọn
DELETE FROM dbo.hocsinh 
WHERE MaHS = '20163922'

DELETE FROM dbo.hocsinh
WHERE NameHS = 'Linh'
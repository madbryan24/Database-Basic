USE SimpleQuery
GO

-- gom 2 bảng có cùng cột lại và bổ sung 2 bảng cho nhau, chỉ lấy giá trị duy nhất
SELECT dbo.GIAOVIEN.MAGV
FROM dbo.GIAOVIEN
WHERE dbo.GIAOVIEN.LUONG >= 2500
UNION 
SELECT dbo.NGUOITHAN.MAGV
FROM dbo.NGUOITHAN
WHERE dbo.NGUOITHAN.PHAI = N'Nữ'

-- nếu muốn lấy tất cả giá trị thì thêm ALL
SELECT dbo.GIAOVIEN.MAGV
FROM dbo.GIAOVIEN
WHERE dbo.GIAOVIEN.LUONG >= 2500
UNION ALL
SELECT dbo.NGUOITHAN.MAGV
FROM dbo.NGUOITHAN
WHERE dbo.NGUOITHAN.PHAI = N'Nữ'
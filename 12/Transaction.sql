USE SimpleQuery
GO

-- transaction dùng để kiểm soát các phiên làm việc
-- rollback hoặc commit là kết thúc transaction

BEGIN TRANSACTION
DELETE dbo.giaovien1
WHERE MAGV = '001'
ROLLBACK

BEGIN TRANSACTION
DELETE dbo.giaovien1
WHERE MAGV = '001'
COMMIT

-- đặt tên cho transaction
BEGIN TRANSACTION trans1
DELETE dbo.giaovien1
WHERE MAGV = '002'
ROLLBACK

-- savepoint của transaction
INSERT giaovien1
SELECT * FROM dbo.GIAOVIEN

SELECT * FROM dbo.giaovien1

-- cả 2 transaction đk rollback
BEGIN TRANSACTION
SAVE TRANSACTION trans2
DELETE dbo.giaovien1
WHERE MAGV = '002'

SAVE TRANSACTION trans3
DELETE dbo.giaovien1
WHERE MAGV = '003'
ROLLBACK TRANSACTION trans2

-- trans2 đk thực thi còn trans3 được rollback
BEGIN TRANSACTION
SAVE TRANSACTION trans2
DELETE dbo.giaovien1
WHERE MAGV = '002'

SAVE TRANSACTION trans3
DELETE dbo.giaovien1
WHERE MAGV = '003'
ROLLBACK TRANSACTION trans3
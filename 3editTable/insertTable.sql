
USE editTable
GO

INSERT INTO dbo.hocsinh
        ( MaHS, NameHS, NgaySinhHS )
VALUES  ( N'20163922', -- MaHS - nvarchar(10)
          N'Thinh', -- NameHS - nvarchar(10)
          '19980506'  -- NgaySinhHS - date
          )
-- số: k cần cặp nháy đơn
-- date: cần cặp nháy đơn
-- unicode(nvarchar,nchar): cần N trước cặp nháy đơn
-- dùng GETDATE hoặc

INSERT INTO dbo.hocsinh
        ( MaHS, NameHS, NgaySinhHS )
VALUES  ( N'20132356', -- MaHS - nvarchar(10)
          N'Linh', -- NameHS - nvarchar(10)
          GETDATE()  -- NgaySinhHS - date
          )
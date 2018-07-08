CREATE DATABASE Test1
GO
 
USE Test1
GO

CREATE TABLE table1(
	ID INT PRIMARY KEY IDENTITY, -- bắt đầu từ 1 và tự tăng
	name NVARCHAR(10)
	)
CREATE TABLE table2(
	ID INT PRIMARY KEY IDENTITY(5,10), -- bắt đầu từ 5 và tự tăng 10
	name NVARCHAR(10)
	)
	

INSERT INTO dbo.table2
        ( name )
VALUES  ( N'1'  -- name - nvarchar(10)
          )

INSERT INTO dbo.table1
        ( name )
VALUES  ( N'2'  -- name - nvarchar(10)
          )

INSERT INTO dbo.table1
        ( name )
VALUES  ( N'3'  -- name - nvarchar(10)
          )

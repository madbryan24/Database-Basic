
CREATE DATABASE SQLQuery
GO

USE SQLQuery
GO

CREATE TABLE giaovien(
	MaGV NVARCHAR(10),
	Name NVARCHAR(10)
)
GO

CREATE TABLE hocsinh(
	MaHS NVARCHAR(10),
	Name NVARCHAR(10)
)
GO
-- create a table

ALTER TABLE dbo.giaovien ADD DOB DATE
-- add more column

DROP TABLE dbo.giaovien
-- delete a table
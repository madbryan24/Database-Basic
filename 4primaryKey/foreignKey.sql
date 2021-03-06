﻿
USE PrimaryForeignKey
GO

INSERT MonHoc(maBM,tenBM)
VALUES('BM02', 'Physics')

INSERT MonHoc(maBM,tenBM)
VALUES('BM03', 'English')

INSERT dbo.GiaoVien(maGV,tenGV,maBM)
VALUES('1','Linh','BM03')

CREATE TABLE MonHoc(
	maBM NVARCHAR(10) PRIMARY KEY,
	tenBM NVARCHAR(20)
)

CREATE TABLE Lop(
	maLop NVARCHAR(10) PRIMARY KEY,
	tenLop NVARCHAR(10)
)

-- set FK trực tiếp
CREATE TABLE GiaoVien(
	maGV NVARCHAR(10) NOT NULL ,
	tenGV NVARCHAR(20),
	maBM NVARCHAR(10),
	CONSTRAINT PK_GV PRIMARY KEY (maGV),
	CONSTRAINT FK_GV FOREIGN KEY (maBM) REFERENCES dbo.MonHoc(maBM)
)

-- set FK bên ngoài
CREATE TABLE HocSinh(
	maHS NVARCHAR(10) NOT NULL ,
	tenHS NVARCHAR(20),
	maLop NVARCHAR(10)

)
CREATE TABLE HocSinh1(
	maHS NVARCHAR(10) NOT NULL ,
	tenHS NVARCHAR(20),
	maLop NVARCHAR(10)
)


ALTER TABLE dbo.HocSinh1
ADD CONSTRAINT PK_HS PRIMARY KEY (maHS)

ALTER TABLE dbo.HocSinh
ADD CONSTRAINT FK_HS FOREIGN KEY (maLop) REFERENCES dbo.Lop(maLop)
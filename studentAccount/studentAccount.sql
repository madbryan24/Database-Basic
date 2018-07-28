CREATE DATABASE studentAccount
GO

USE studentAccount
GO

CREATE TABLE [dbo].[Class](
 [Class_ID] [varchar](20) PRIMARY KEY,
 [Class_Name] [nvarchar](50) NULL,
)
GO

CREATE TABLE [dbo].[Student](
 [Student_ID] [varchar](20) PRIMARY KEY,
 Pass VARCHAR(20) NOT NULL,
 [Student_Name] [nvarchar](100) NULL,
 [Sex] [nvarchar](10) NULL,
 [Class_ID] [varchar](20) FOREIGN KEY REFERENCES dbo.Class,
 diem1 FLOAT,
 diem2 FLOAT,
 diem3 FLOAT,
 diem4 FLOAT,
 diem5 FLOAT
)
GO 

DROP TABLE dbo.Student

INSERT INTO dbo.Class
        ( Class_ID, Class_Name )
VALUES  ( 'ENG', -- Class_ID - varchar(20)
          N'English'  -- Class_Name - nvarchar(50)
          )
		  INSERT INTO dbo.Class
        ( Class_ID, Class_Name )
VALUES  ( 'ALM', -- Class_ID - varchar(20)
          N'Algorithm'  -- Class_Name - nvarchar(50)
          )
		  INSERT INTO dbo.Class
        ( Class_ID, Class_Name )
VALUES  ( 'DBE', -- Class_ID - varchar(20)
          N'Database'  -- Class_Name - nvarchar(50)
          )

INSERT INTO dbo.Student
        ( Student_ID ,
          Pass,
          Student_Name ,
          Sex ,
          Class_ID ,
          diem1 ,
          diem2 ,
          diem3 ,
          diem4 ,
          diem5
        )
VALUES  ( '20163922' , -- Student_ID - varchar(20)
          'ckjuvk9456' , -- Password - varchar(20)
          N'Hà Lê Thịnh' , -- Student_Name - nvarchar(100)
          N'Nam' , -- Sex - nvarchar(10)
          'ALM' , -- Class_ID - varchar(20)
          9.0 , -- diem1 - float
          8.0 , -- diem2 - float
          8.5 , -- diem3 - float
          9.5 , -- diem4 - float
          10.0  -- diem5 - float
        )

		INSERT INTO dbo.Student
        ( Student_ID ,
          Pass,
          Student_Name ,
          Sex ,
          Class_ID ,
          diem1 ,
          diem2 ,
          diem3 ,
          diem4 ,
          diem5
        )
VALUES  ( '20161311' , -- Student_ID - varchar(20)
          'linhnguykha' , -- Password - varchar(20)
          N'Nguyễn Khánh Linh' , -- Student_Name - nvarchar(100)
          N'Nữ' , -- Sex - nvarchar(10)
          'ALM' , -- Class_ID - varchar(20)
          8.0 , -- diem1 - float
          6.0 , -- diem2 - float
          7.5 , -- diem3 - float
          8.5 , -- diem4 - float
          9.0  -- diem5 - float
        )

		INSERT INTO dbo.Student
        ( Student_ID ,
          Pass,
          Student_Name ,
          Sex ,
          Class_ID ,
          diem1 ,
          diem2 ,
          diem3 ,
          diem4 ,
          diem5
        )
VALUES  ( '20164754' , -- Student_ID - varchar(20)
          'haiyennguyen' , -- Password - varchar(20)
          N'Nguyễn Hải Yến' , -- Student_Name - nvarchar(100)
          N'Nữ' , -- Sex - nvarchar(10)
          'ENG' , -- Class_ID - varchar(20)
          6.0 , -- diem1 - float
          5.0 , -- diem2 - float
          8.5 , -- diem3 - float
          4.5 , -- diem4 - float
          6.0  -- diem5 - float
        )

		INSERT INTO dbo.Student
        ( Student_ID ,
          Pass,
          Student_Name ,
          Sex ,
          Class_ID ,
          diem1 ,
          diem2 ,
          diem3 ,
          diem4 ,
          diem5
        )
VALUES  ( '20160605' , -- Student_ID - varchar(20)
          'yang' , -- Password - varchar(20)
          N'Hoàng Trường Giang' , -- Student_Name - nvarchar(100)
          N'Nam' , -- Sex - nvarchar(10)
          'ENG' , -- Class_ID - varchar(20)
          8.0 , -- diem1 - float
          6.0 , -- diem2 - float
          5.5 , -- diem3 - float
          9.5 , -- diem4 - float
          10.0  -- diem5 - float
        )
		INSERT INTO dbo.Student
        ( Student_ID ,
          Pass,
          Student_Name ,
          Sex ,
          Class_ID ,
          diem1 ,
          diem2 ,
          diem3 ,
          diem4 ,
          diem5
        )
VALUES  ( '20162307' , -- Student_ID - varchar(20)
          'ckjuvk94567890' , -- Password - varchar(20)
          N'Bill Gates' , -- Student_Name - nvarchar(100)
          N'Nam' , -- Sex - nvarchar(10)
          'ALM' , -- Class_ID - varchar(20)
          8.0 , -- diem1 - float
          7.0 , -- diem2 - float
          6.5 , -- diem3 - float
          5.5 , -- diem4 - float
          4.0  -- diem5 - float
        )
		INSERT INTO dbo.Student
        ( Student_ID ,
          Pass,
          Student_Name ,
          Sex ,
          Class_ID ,
          diem1 ,
          diem2 ,
          diem3 ,
          diem4 ,
          diem5
        )
VALUES  ( '20162410' , -- Student_ID - varchar(20)
          'ckjuvk9456' , -- Password - varchar(20)
          N'Song Gur Er' , -- Student_Name - nvarchar(100)
          N'Nữ' , -- Sex - nvarchar(10)
          'ENG' , -- Class_ID - varchar(20)
          9.0 , -- diem1 - float
          8.0 , -- diem2 - float
          8.5 , -- diem3 - float
          9.5 , -- diem4 - float
          10.0  -- diem5 - float
        )
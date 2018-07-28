CREATE DATABASE [StudentDB]
go
 use StudentDB
go
CREATE TABLE [dbo].[Class](
 [Class_ID] [varchar](20) PRIMARY KEY,
 [Class_Name] [nvarchar](50) NULL,
)
go
CREATE TABLE [dbo].[Student](
 [Student_ID] [varchar](20) PRIMARY KEY,
 [Student_Name] [nvarchar](100) NULL,
 [Sex] [nvarchar](10) NULL,
 [Class_ID] [varchar](20) FOREIGN KEY REFERENCES dbo.Class,
)

DROP TABLE dbo.Class
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
		            Student_Name ,
		            Sex ,
		            Class_ID
		          )
		  VALUES  ( '001' , -- Student_ID - varchar(20)
		            N'Hà Lê Thịnh' , -- Student_Name - nvarchar(100)
		            N'Nam' , -- Sex - nvarchar(10)
		            'ALM'  -- Class_ID - varchar(20)
		          )
				  INSERT INTO dbo.Student
		          ( Student_ID ,
		            Student_Name ,
		            Sex ,
		            Class_ID
		          )
		  VALUES  ( '002' , -- Student_ID - varchar(20)
		            N'Nguyễn Khánh Linh' , -- Student_Name - nvarchar(100)
		            N'Nữ' , -- Sex - nvarchar(10)
		            'ALM'  -- Class_ID - varchar(20)
		          )
				  INSERT INTO dbo.Student
		          ( Student_ID ,
		            Student_Name ,
		            Sex ,
		            Class_ID
		          )
		  VALUES  ( '003' , -- Student_ID - varchar(20)
		            N'Nguyễn Hải Yến' , -- Student_Name - nvarchar(100)
		            N'Nữ' , -- Sex - nvarchar(10)
		            'ENG'  -- Class_ID - varchar(20)
		          )
				  INSERT INTO dbo.Student
		          ( Student_ID ,
		            Student_Name ,
		            Sex ,
		            Class_ID
		          )
		  VALUES  ( '004' , -- Student_ID - varchar(20)
		            N'Jack Ma' , -- Student_Name - nvarchar(100)
		            N'Nam' , -- Sex - nvarchar(10)
		            'DBE'  -- Class_ID - varchar(20)
		          )
				  INSERT INTO dbo.Student
		          ( Student_ID ,
		            Student_Name ,
		            Sex ,
		            Class_ID
		          )
		  VALUES  ( '005' , -- Student_ID - varchar(20)
		            N'Bill Gates' , -- Student_Name - nvarchar(100)
		            N'Nam' , -- Sex - nvarchar(10)
		            'ALM'  -- Class_ID - varchar(20)
		          )
				  INSERT INTO dbo.Student
		          ( Student_ID ,
		            Student_Name ,
		            Sex ,
		            Class_ID
		          )
		  VALUES  ( '006' , -- Student_ID - varchar(20)
		            N'Jennifer Lawrence' , -- Student_Name - nvarchar(100)
		            N'Nữ' , -- Sex - nvarchar(10)
		            'DBE'  -- Class_ID - varchar(20)
		          )
				  INSERT INTO dbo.Student
		          ( Student_ID ,
		            Student_Name ,
		            Sex ,
		            Class_ID
		          )
		  VALUES  ( '007' , -- Student_ID - varchar(20)
		            N'Song Gue Ur' , -- Student_Name - nvarchar(100)
		            N'Nữ' , -- Sex - nvarchar(10)
		            'ENG'  -- Class_ID - varchar(20)
		          )
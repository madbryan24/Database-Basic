USE Test1
GO

CREATE TABLE testCheck(
	ID INT PRIMARY KEY IDENTITY(5,10), 
	Luong INT CHECK(Luong < 5000 AND Luong > 2000) -- check lương khi thêm vào
)

CREATE TABLE testCheck2(
	ID INT PRIMARY KEY IDENTITY(1,1), 
	Luong INT CHECK(Luong < 5000 AND Luong > 2000) -- check lương khi thêm vào
)

--có thể đật check ngoài 
CREATE TABLE testCheck3(
	ID INT PRIMARY KEY IDENTITY(1,1), 
	Luong INT 
)
ALTER TABLE dbo.testCheck2 ADD CONSTRAINT CHECK_1 CHECK(Luong < 5000 AND Luong > 2000) -- check lương khi thêm vào



INSERT dbo.testCheck
        (Luong )
VALUES  ( 2200  -- Luong - int )

INSERT dbo.testCheck2
        ( Luong )
VALUES  (  -- ID - int
          3050  -- Luong - int
          )


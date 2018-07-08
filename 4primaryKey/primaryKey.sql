USE editTable
GO

INSERT dbo.primaryKey2
        ( ID)
VALUES  (3)

-- Unique: duy nhất
-- NOT NULL: k được phép bỏ trống
-- PRIMARY KEY = UNIQUE + NOT NULL
-- trường để KEY phải để NOT NULL

CREATE TABLE primaryKey1(
	ID INT UNIQUE NOT NULL,
	name NVARCHAR(20) DEFAULT 'Linh'
)

-- set trực tiếp
CREATE TABLE primaryKey2(
	ID INT PRIMARY KEY,
	name NVARCHAR(20) DEFAULT 'Linh'
)

-- set bảng xong gán PRIMARY KEY
CREATE TABLE primaryKey3(
	ID INT NOT NULL ,
	name NVARCHAR(20) DEFAULT 'Linh'
)

ALTER TABLE primaryKey3
ADD PRIMARY KEY (ID)

-- set bảng xong gán PRIMARY KEY và đặt tên
CREATE TABLE primaryKey35(
	ID INT NOT NULL ,
	name NVARCHAR(20) DEFAULT 'Linh'
)
ALTER TABLE primaryKey35
ADD CONSTRAINT PK_35
PRIMARY KEY (ID)

-- set KEY trong bảng và đặt tên
CREATE TABLE primaryKey4(
	ID INT NOT NULL ,
	name NVARCHAR(20) DEFAULT 'Linh'
	CONSTRAINT PK_4
	PRIMARY KEY (ID)
)

-- set nhiều trường làm key
CREATE TABLE primaryKey5(
	ID INT NOT NULL,
	ID2 INT NOT NULL ,
	name NVARCHAR(20) DEFAULT 'Linh'
	PRIMARY KEY (ID, ID2)
)
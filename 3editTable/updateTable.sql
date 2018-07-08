
USE editTable
GO

-- update set để update toàn bộ
-- update set where để update có điều kiện

UPDATE dbo.hocsinh 
SET MaHS = '1'

UPDATE dbo.hocsinh
SET NgaySinhHS = '19971113'
WHERE NameHS = 'Linh'
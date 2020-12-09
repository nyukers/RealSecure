-- standby RESTORE
use master
GO
RESTORE DATABASE ISSED
FROM DISK = 'd:\iss\day\restore\ISSEDbak.dmp'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'

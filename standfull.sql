-- FULL RESTORE
use master
GO
RESTORE DATABASE ISSED
FROM DISK = 'd:\iss\backup\ISSEDbak_010807.dmp'
WITH REPLACE, NORECOVERY

-- standby RESTORE
use master
-- LOG everyday
GO
RESTORE LOG ISSED
FROM DISK = 'd:\iss\backup\log\ISSEDLOG_290405.dmp' 
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'           

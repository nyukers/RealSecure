-- standby RESTORE
use master
-- LOG everyday
GO
RESTORE LOG ISSED
FROM DISK = 'd:\iss\day\reststandby\ISSEDlog.dmp'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'

-- LOG RESTORE
use master
go
RESTORE LOG ISSED
FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
WITH RECOVERY


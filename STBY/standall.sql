-- standby RESTORE
-- Žá­Ž˘­ ď
use master
GO
RESTORE DATABASE ISSED
FROM DISK = 'd:\iss\backup\ISSED_data.mdf'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
-- Ą §   

-- LOG everyday
GO
RESTORE LOG ISSED
FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
-- Ą §  

.....
-- LOG Žáâ âŽŞ
GO
RESTORE LOG ISSED
FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
-- Ą §  

-- Recovery Up!
GO
RESTORE DATABASE ISSED
WITH RECOVERY
GO
-- Ą §  

-- standby RESTORE
-- основная
use master
GO
RESTORE DATABASE ISSED
FROM DISK = 'd:\iss\backup\ISSED_data.mdf'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
-- база ДОСТУПНА 

-- LOG everyday
GO
RESTORE LOG ISSED
FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
-- база ДОСТУПНА

.....
-- LOG остаток
GO
RESTORE LOG ISSED
FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
-- база ДОСТУПНА

-- Recovery Up!
GO
RESTORE DATABASE ISSED
WITH RECOVERY
GO
-- база ДОСТУПНА

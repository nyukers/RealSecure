-- standby RESTORE
-- �᭮����
use master
GO
RESTORE DATABASE ISSED
FROM DISK = 'd:\iss\backup\ISSED_data.mdf'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
-- ���� �������� 

-- LOG everyday
GO
RESTORE LOG ISSED
FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
-- ���� ��������

.....
-- LOG ���⮪
GO
RESTORE LOG ISSED
FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
-- ���� ��������

-- Recovery Up!
GO
RESTORE DATABASE ISSED
WITH RECOVERY
GO
-- ���� ��������

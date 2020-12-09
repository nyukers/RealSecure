	-- S T A N D B Y --

--������ ����� �� ISSED                 
BACKUP DATABASE ISSED TO ISSEDBAK                  

	-- standby RESTORE
	-- �᭮����
	use master
	GO
	RESTORE DATABASE ISSED
	FROM DISK = 'd:\iss\backup\ISSED_data.mdf'
	WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
	-- ���� �������� 

-- ������ ���� ����� ��ୠ�� �࠭���権 �� ISSED      
BACKUP LOG ISSED TO ISSEDLOG                         

	-- LOG everyday
	GO
	RESTORE LOG ISSED
	FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
	WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
	-- ���� ��������

.....
-- LOG finish
BACKUP LOG ISSED TO ISSEDLOG
WITH NO_TRUNCATE

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
	-- ���� ��������

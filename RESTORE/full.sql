-- FULL RESTORE
-- �᭮����
use master
GO
RESTORE DATABASE ISSED
FROM DISK = 'd:\iss\backup\ISSED_data.dmp'
WITH REPLACE, NORECOVERY
-- ���� ���������� !

-- DIF
--ࠧ���
GO
RESTORE DATABASE ISSED
FROM DISK = 'd:\iss\backup\ISSEDdif.dmp'
WITH NORECOVERY
-- ���� ���������� !
--or--	
	�᫨ �� �।����������
	���쭥�襥 ����⠭�������
	WITH RECOVERY  
        -- ���� ��������

-- LOG
-- ���⮪
GO
RESTORE LOG ISSED
FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
WITH RECOVERY
-- ���� ��������

	-- or --
	�᫨ ��᫥���� ��� 㦥 
        ������㯥�
	RESTORE DATABASE ISSED
	WITH RECOVERY
	-- ���� ��������

	-- S I M P L E --

--��� � ����� ������ ����� �� ISSED                 
BACKUP DATABASE ISSED TO ISSEDBAK                  

	-- RESTORE
	-- �᭮����
	use master
	GO
	RESTORE DATABASE ISSED
	FROM DISK = 'd:\iss\backup\ISSED_data.dmp'
	WITH REPLACE, NORECOVERY
	-- ���� ���������� !

--��� � ������ ����७樠�쭠� ����� �� ISSED      
BACKUP DATABASE ISSED TO ISSEDDIF                  
WITH DIFFERENTIAL                                  

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

-- ����� ��ୠ�� �࠭���権 �� ISSED      
BACKUP LOG ISSED TO ISSEDLOG                         

	-- LOG ���⮪
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

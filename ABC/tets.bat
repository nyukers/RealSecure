
osql -n -E -d master -i stand.sql -o stand1.log -w 1340

�������� ���ன�� ��� ������:
exec  SP_ADDUMPDEVICE 'DISK', 'ISSEDBAK', 
 'C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\ISSEDBAK.dmp'
exec  SP_ADDUMPDEVICE 'DISK', 'ISSEDDIF', 
 'C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\DIF\ISSEDIF.dmp'
exec  SP_ADDUMPDEVICE 'DISK', 'ISSEDLOG', 
 'C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\LOG\ISSEDLOG.dmp'


��� ࠧ������ �������:
alter database ISSED
 set recovery SIMPLE

��� ������� standby:
alter database ISSED
 set recovery FULL

C�ࠢ�� � ���ﭨ� ����:
 USE master
exec sp_helpdb

C�ࠢ�� � ������ ������:
 USE msdb
 select backup_set_id, file_number, physical_name
 from backupfile


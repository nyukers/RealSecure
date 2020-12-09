
osql -n -E -d master -i stand.sql -o stand1.log -w 1340

Создание устройств для бекапа:
exec  SP_ADDUMPDEVICE 'DISK', 'ISSEDBAK', 
 'C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\ISSEDBAK.dmp'
exec  SP_ADDUMPDEVICE 'DISK', 'ISSEDDIF', 
 'C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\DIF\ISSEDIF.dmp'
exec  SP_ADDUMPDEVICE 'DISK', 'ISSEDLOG', 
 'C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\LOG\ISSEDLOG.dmp'


Для разностных бекапов:
alter database ISSED
 set recovery SIMPLE

Для бекапов standby:
alter database ISSED
 set recovery FULL

Cправка о состоянии базы:
 USE master
exec sp_helpdb

Cправка о копиях бекапа:
 USE msdb
 select backup_set_id, file_number, physical_name
 from backupfile


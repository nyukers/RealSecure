USE master
--select backup_set_id, file_number, file_size, physical_name
--from backupfile
exec sp_helpdb
exec sp_monitor
--dbcc opentran (ISSED)
--dbcc sqlperf (logspace)


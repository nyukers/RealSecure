USE msdb
GO
select backup_set_id, file_number, physical_name
from backupfile

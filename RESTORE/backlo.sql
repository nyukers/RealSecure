USE msdb
select backup_set_id, file_number, file_size, physical_name
from backupfile

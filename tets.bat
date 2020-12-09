:: Backup manual ISSED


:@echo EXEC SP_ADDUMPDEVICE 'DISK', 'ISSEDLOG', 'C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\ISSEDLOG%dd%%mm%%yy%.dmp' >backlog.sql
:@echo -- Каждую ночь копию журнала транзакций БД ISSED     >>backlog.sql
:@echo BACKUP LOG ISSED TO ISSEDLOG_%dd%%mm%%yy%            >>backlog.sql

osql -n -E -d master -i stand1.sql -o backlo.log -w 1340
:osql -n -E -d ISSED -i backmon.sql -o backlo.log -w 1340

	-- S T A N D B Y --

--Полная копия БД ISSED                 
BACKUP DATABASE ISSED TO ISSEDBAK                  

	-- standby RESTORE
	-- основная
	use master
	GO
	RESTORE DATABASE ISSED
	FROM DISK = 'd:\iss\backup\ISSED_data.mdf'
	WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
	-- база ДОСТУПНА 

-- Каждую ночь копию журнала транзакций БД ISSED      
BACKUP LOG ISSED TO ISSEDLOG                         

	-- LOG everyday
	GO
	RESTORE LOG ISSED
	FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
	WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
	-- база ДОСТУПНА

.....
-- LOG finish
BACKUP LOG ISSED TO ISSEDLOG
WITH NO_TRUNCATE

	-- LOG остаток
	GO
	RESTORE LOG ISSED
	FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
	WITH STANDBY = 'd:\iss\backup\standby\undo.ldf'
	-- база ДОСТУПНА

	-- Recovery Up!
	GO
	RESTORE DATABASE ISSED
	WITH RECOVERY
	-- база ДОСТУПНА

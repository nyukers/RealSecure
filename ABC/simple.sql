	-- S I M P L E --

--Раз в месяц полная копия БД ISSED                 
BACKUP DATABASE ISSED TO ISSEDBAK                  

	-- RESTORE
	-- основная
	use master
	GO
	RESTORE DATABASE ISSED
	FROM DISK = 'd:\iss\backup\ISSED_data.dmp'
	WITH REPLACE, NORECOVERY
	-- база НЕДОСТУПНА !

--Раз в неделю дифференциальная копия БД ISSED      
BACKUP DATABASE ISSED TO ISSEDDIF                  
WITH DIFFERENTIAL                                  

	-- DIF
	--разница
	GO
	RESTORE DATABASE ISSED
	FROM DISK = 'd:\iss\backup\ISSEDdif.dmp'
	WITH NORECOVERY
	-- база НЕДОСТУПНА !
	--or--	
	если не предполагается
	дальнейшее восстановление
	WITH RECOVERY  
        -- база ДОСТУПНА

-- копия журнала транзакций БД ISSED      
BACKUP LOG ISSED TO ISSEDLOG                         

	-- LOG остаток
	GO
	RESTORE LOG ISSED
	FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
	WITH RECOVERY
	-- база ДОСТУПНА
        -- or --
	если последний лог уже 
        недоступен
	RESTORE DATABASE ISSED
	WITH RECOVERY
	-- база ДОСТУПНА

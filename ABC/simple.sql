	-- S I M P L E --

-- § ¢ ¬¥áïæ ¯®«­ ï ª®¯¨ï  ISSED                 
BACKUP DATABASE ISSED TO ISSEDBAK                  

	-- RESTORE
	-- ®á­®¢­ ï
	use master
	GO
	RESTORE DATABASE ISSED
	FROM DISK = 'd:\iss\backup\ISSED_data.dmp'
	WITH REPLACE, NORECOVERY
	-- ¡ §   !

-- § ¢ ­¥¤¥«î ¤¨ää¥à¥­æ¨ «ì­ ï ª®¯¨ï  ISSED      
BACKUP DATABASE ISSED TO ISSEDDIF                  
WITH DIFFERENTIAL                                  

	-- DIF
	--à §­¨æ 
	GO
	RESTORE DATABASE ISSED
	FROM DISK = 'd:\iss\backup\ISSEDdif.dmp'
	WITH NORECOVERY
	-- ¡ §   !
	--or--	
	¥á«¨ ­¥ ¯à¥¤¯®« £ ¥âáï
	¤ «ì­¥©è¥¥ ¢®ááâ ­®¢«¥­¨¥
	WITH RECOVERY  
        -- ¡ §  

-- ª®¯¨ï ¦ãà­ «  âà ­§ ªæ¨©  ISSED      
BACKUP LOG ISSED TO ISSEDLOG                         

	-- LOG ®áâ â®ª
	GO
	RESTORE LOG ISSED
	FROM DISK = 'd:\iss\backup\ISSEDlog.dmp'
	WITH RECOVERY
	-- ¡ §  
        -- or --
	¥á«¨ ¯®á«¥¤­¨© «®£ ã¦¥ 
        ­¥¤®áâã¯¥­
	RESTORE DATABASE ISSED
	WITH RECOVERY
	-- ¡ §  

:: Backup manual ISSED
@echo off

set dd=%date:~3,2%
set mm=%date:~6,2%
set yy=%date:~11,2%
set week=%date:~0,2%
set hh=%time:~0,2%
set min=%time:~3,2%

@IF %hh% LSS 10 set hh=0%time:~1,1%


set tim=%hh%%min%
set DayOf=%week%
set dat1=%yy%%mm%%dd%


@echo Current YMD %dat1%
@echo Time is hhmm %tim%
@echo Current Day %DayOf%
::pause

"C:\Program Files\Microsoft SQL Server\MSSQL\Binn\sqlmaint" -D ISSED -Rpt d:\ISS\BACKUP\Ck -CkDB

osql -n -E -d ISSED -i backweek.sql -o backweek.log -w 240

move "C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\DIF\ISSEDIF.dmp" "D:\ISS\BACKUP\DIF\ISSEDDIF_%dd%%mm%%yy%.dmp"

set DIFDMP=ISSEDDIF_%dd%%mm%%yy%.dmp
@echo DMPLOGname for delete are ISSEDLOG_??????.dmp

:if exist D:\ISS\BACKUP\DIF\%DIFDMP% del D:\ISS\BACKUP\LOG\ISSEDLOG_??????.dmp
:end
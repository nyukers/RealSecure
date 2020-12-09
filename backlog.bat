:: Backup manual ISSED
@echo off

set dd=%date:~3,2%
set mm=%date:~6,2%
set yy=%date:~11,2%
set week=%date:~0,2%
set hh=%time:~0,2%
set min=%time:~3,2%

@IF %hh% LSS 10 set hh=0%time:~1,1%
@IF %week% EQU Tue set week=Tuesday


set tim=%hh%%min%
set DayOf=%week%
set dat1=%yy%%mm%%dd%


@echo Current YMD %dat1%
@echo Time is hhmm %tim%
@echo Current Day %DayOf%
::pause

osql -n -E -d ISSED -i backlog.sql -o backlog.log -w 240

move "C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\LOG\ISSEDLOG.dmp" "D:\ISS\BACKUP\LOG\ISSEDLOG_%dd%%mm%%yy%.dmp"

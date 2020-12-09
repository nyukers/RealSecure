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

"C:\Program Files\Microsoft SQL Server\MSSQL\Binn\sqlmaint" -D ISSED -Rpt d:\ISS\BACKUP\Ck -CkDB

osql -n -E -d ISSED -i backmon.sql -o backmon.log -w 240

move "C:\Program Files\Microsoft SQL Server\MSSQL\BACKUP\ISSEDBAK.dmp" "D:\ISS\BACKUP\ISSEDBAK_%dd%%mm%%yy%.dmp"

set BAKDMP=ISSEDBAK_%dd%%mm%%yy%.dmp

@IF %mm% EQU 01 set mm=NY
@IF %mm% EQU 02 set mm=01
@IF %mm% EQU 03 set mm=02
@IF %mm% EQU 04 set mm=03
@IF %mm% EQU 05 set mm=04
@IF %mm% EQU 06 set mm=05
@IF %mm% EQU 07 set mm=06
@IF %mm% EQU 08 set mm=07
@IF %mm% EQU 09 set mm=08
@IF %mm% EQU 10 set mm=09
@IF %mm% EQU 11 set mm=10
@IF %mm% EQU 12 set mm=11
@IF %mm% EQU NY set mm=12


@echo DMPDIFname for delete are ISSEDDIF_??%mm%??.dmp

if exist D:\ISS\BACKUP\%BAKDMP% del D:\ISS\BACKUP\DIF\ISSEDDIF_??%mm%??.dmp
:end


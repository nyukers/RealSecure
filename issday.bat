:: Audit manual ISSED
@echo off

:date
:time
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

:set dd=10

@echo Current YMD %dat1%
@echo Time is hhmm %tim%
@echo Current Day %DayOf%
::pause

copy /Y ev40.nul ev40.sql
copy /Y ev41.nul ev41.sql
copy /Y ev42.nul ev42.sql
copy /Y ev5.nul  ev5.sql
copy /Y ev50.nul ev50.sql
copy /Y ev51.nul ev51.sql
copy /Y ev52.nul ev52.sql
copy /Y ev53.nul ev53.sql
copy /Y ev54.nul ev54.sql
copy /Y ev6.nul  ev6.sql
copy /Y ev61.nul  ev61.sql
copy /Y ev62.nul  ev62.sql
copy /Y ev63.nul  ev63.sql
copy /Y ev64.nul  ev64.sql
::SNMP
copy /Y ev65.nul  ev65.sql
copy /Y ev66.nul  ev66.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%') >>ev40.sql
@echo (d.CurrentDate = '%mm%.%dd%.20%yy%') >>ev41.sql
@echo (d.CurrentDate = '%mm%.%dd%.20%yy%') >>ev42.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev5.sql
@echo group by                                      >>ev5.sql
@echo EventDate, e.EventID, OrigEventName, SensorName,         >>ev5.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev5.sql
@echo AlertType, EventPriority                      >>ev5.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev50.sql
@echo group by                                      >>ev50.sql
@echo EventDate, e.EventID, OrigEventName, SensorName,         >>ev50.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev50.sql
@echo AlertType, EventPriority                      >>ev50.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev6.sql
@echo group by                                      >>ev6.sql
@echo EventDate, e.EventID, OrigEventName, SensorName,         >>ev6.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev6.sql
@echo AlertType, EventPriority                      >>ev6.sql
@echo order by OrigEventName                        >>ev6.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev61.sql
@echo group by                                      >>ev61.sql
@echo EventDate, e.EventID, OrigEventName, SensorName,         >>ev61.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev61.sql
@echo AlertType, EventPriority                      >>ev61.sql
@echo order by OrigEventName                        >>ev61.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev62.sql
@echo group by                                      >>ev62.sql
@echo EventDate, e.EventID, OrigEventName, SensorName,         >>ev62.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev62.sql
@echo AlertType, EventPriority                      >>ev62.sql
@echo order by OrigEventName                        >>ev62.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev63.sql
@echo group by                                      >>ev63.sql
@echo EventDate, e.EventID, OrigEventName, SensorName,         >>ev63.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress    >>ev63.sql
@echo order by OrigEventName                        >>ev63.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev64.sql
@echo group by                                      >>ev64.sql
@echo OrigEventName, EventDate,                     >>ev64.sql
@echo e.AttackSuccessful,                           >>ev64.sql
@echo e.EventID, SensorName,                       >>ev64.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress     >>ev64.sql
@echo order by e.AttackSuccessful                   >>ev64.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev65.sql
@echo group by                                      >>ev65.sql
@echo EventDate, e.EventID, OrigEventName, SensorName,         >>ev65.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev65.sql
@echo AlertType, EventPriority                      >>ev65.sql
@echo order by EventDate, OrigEventName             >>ev65.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev66.sql
@echo group by                                      >>ev66.sql
@echo EventDate, e.EventID, OrigEventName, SensorName,         >>ev66.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev66.sql
@echo AlertType, EventPriority                      >>ev66.sql
@echo order by OrigEventName                        >>ev66.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev51.sql
@echo group by                                      >>ev51.sql
@echo EventDate, e.EventID, SensorName,             >>ev51.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev51.sql
@echo AlertType, EventPriority                      >>ev51.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev52.sql
@echo group by                                      >>ev52.sql
@echo EventDate, e.EventID, SensorName,             >>ev52.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev52.sql
@echo AlertType, EventPriority                      >>ev52.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev53.sql
@echo group by                                      >>ev53.sql
@echo EventDate, e.EventID, SensorName,             >>ev53.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev53.sql
@echo AlertType, EventPriority                      >>ev53.sql

@echo (d.CurrentDate = '%mm%.%dd%.20%yy%')          >>ev54.sql
@echo group by                                      >>ev54.sql
@echo EventDate, e.EventID, SensorName,             >>ev54.sql
@echo DisplaySrcIPAddress, DisplayDestIPAddress,    >>ev54.sql
@echo AlertType, EventPriority                      >>ev54.sql


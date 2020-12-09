select 
EventDate, 
OrigEventName, 
DisplaySrcIPAddress, DisplayDestIPAddress,
SensorName,
AlertID, AlertType,
ParamName, ParamValue, Count(*)

from Events e, EventParams ep
where 
e.EventID = ep.EventID
and
e.DayID = 2154 and
AlertType = 101

group by 
EventDate, OrigEventName, 
DisplaySrcIPAddress, DisplayDestIPAddress,
SensorName,
AlertID, AlertType,
ParamName, ParamValue
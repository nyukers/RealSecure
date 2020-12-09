select 
EventDate, OrigEventName, 
SensorName, 
DisplaySrcIPAddress, DisplayDestIPAddress,
AlertType 

from Events e, EventDay d
where 
 (d.DayID = e.DayID) and
(d.CurrentDate = '06.10.2004') 

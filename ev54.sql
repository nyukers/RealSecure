select 
EventDate, e.EventID,
SensorName,
DisplaySrcIPAddress, DisplayDestIPAddress,
AlertType, EventPriority, Count(*) as _CNT_

from Events e, EventParams ep, EventDay d

where 
e.SensorName = '9AlanNS1' and
e.EventID = ep.EventID and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007')          
group by                                      
EventDate, e.EventID, SensorName,             
DisplaySrcIPAddress, DisplayDestIPAddress,    
AlertType, EventPriority                      

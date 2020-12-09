select 
EventDate, e.EventID,
SensorName,
DisplaySrcIPAddress, DisplayDestIPAddress,
AlertType, EventPriority, Count(*) as _CNT_

from Events e, EventParams ep, EventDay d

where 
e.OrigEventName = 'TCP_Port_Scan' and
e.SensorName    = '9ABARSSBRS' and
e.EventID = ep.EventID and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007')          
group by                                      
EventDate, e.EventID, SensorName,             
DisplaySrcIPAddress, DisplayDestIPAddress,    
AlertType, EventPriority                      

select 
EventDate, e.EventID, OrigEventName, 
SensorName,
DisplaySrcIPAddress, DisplayDestIPAddress,
AlertType, EventPriority, Count(*) as _CNT_

from Events e, EventParams ep, EventDay d

where 
e.EventID = ep.EventID and
e.OrigEventName NOT LIKE 'TCP_%' and
e.OrigEventName NOT LIKE '%Info' and
e.OrigEventName NOT LIKE 'SNMP_%'and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007')          
group by                                      
EventDate, e.EventID, OrigEventName, SensorName,         
DisplaySrcIPAddress, DisplayDestIPAddress,    
AlertType, EventPriority                      
order by OrigEventName                        

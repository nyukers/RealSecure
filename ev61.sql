select 
EventDate, e.EventID, OrigEventName, 
SensorName,
DisplaySrcIPAddress, DisplayDestIPAddress,
AlertType, EventPriority, Count(*) as _CNT_

from Events e, EventParams ep, EventDay d

where 
e.EventID = ep.EventID and
(e.OrigEventName LIKE 'TCP_%' or
 e.OrigEventName LIKE 'UDP_%') and
e.DisplaySrcIPAddress NOT LIKE '10.168.10.12' and
e.DisplaySrcIPAddress NOT LIKE '10.168.6.2' and
e.DisplaySrcIPAddress NOT LIKE '10.168.6.3' and
e.DisplaySrcIPAddress NOT LIKE '10.168.6.4' and
e.DisplaySrcIPAddress NOT LIKE '10.168.6.5' and
e.DisplaySrcIPAddress NOT LIKE '10.168.8.22' and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007')          
group by                                      
EventDate, e.EventID, OrigEventName, SensorName,         
DisplaySrcIPAddress, DisplayDestIPAddress,    
AlertType, EventPriority                      
order by OrigEventName                        

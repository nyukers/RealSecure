select 
EventDate, e.EventID, OrigEventName, 
SensorName,
DisplaySrcIPAddress, DisplayDestIPAddress,
AlertType, EventPriority, Count(*) as _CNT_

from Events e, EventParams ep, EventDay d

where 
e.EventID = ep.EventID and
e.DisplaySrcIPAddress NOT LIKE '10.168.11.53' and
e.DisplaySrcIPAddress NOT LIKE '10.168.11.54' and
e.DisplaySrcIPAddress NOT LIKE '10.168.6.34'  and
e.DisplaySrcIPAddress NOT LIKE '10.168.6.35'  and
e.DisplaySrcIPAddress NOT LIKE '10.168.6.18'  and
e.DisplaySrcIPAddress NOT LIKE '10.81.16.25'  and
e.DisplaySrcIPAddress NOT LIKE '10.80.127.70' and
e.OrigEventName NOT LIKE 'TCP_%' and
e.OrigEventName NOT LIKE 'UDP_%' and
e.OrigEventName NOT LIKE 'SNMP_%'and
e.OrigEventName NOT LIKE '%Info' and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007')          
group by                                      
EventDate, e.EventID, OrigEventName, SensorName,         
DisplaySrcIPAddress, DisplayDestIPAddress,    
AlertType, EventPriority                      
order by OrigEventName                        

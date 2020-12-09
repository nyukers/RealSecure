select 
EventDate, e.EventID, OrigEventName, 
SensorName,
DisplaySrcIPAddress, DisplayDestIPAddress,
AlertType, EventPriority, Count(*) as _CNT_

from Events e, EventParams ep, EventDay d

where 
e.EventID = ep.EventID and
( e.DisplaySrcIPAddress LIKE '10.81.16.25' or
  e.DisplaySrcIPAddress LIKE '10.77.160.51' or
  e.DisplaySrcIPAddress LIKE '10.76.0.75' or
  e.DisplaySrcIPAddress LIKE '10.168.6.18' or
  e.DisplaySrcIPAddress LIKE '172.31.101.10' or
 e.DisplayDestIPAddress LIKE '10.168.6.18' or
 e.DisplayDestIPAddress LIKE '172.31.101.10' or
 e.DisplayDestIPAddress LIKE '10.81.16.25' or
 e.DisplayDestIPAddress LIKE '10.77.160.51' or
 e.DisplayDestIPAddress LIKE '10.76.0.75')
and
e.OrigEventName NOT LIKE 'SNMP_%' and
e.OrigEventName NOT LIKE 'Ping_Sweep' and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007')          
group by                                      
EventDate, e.EventID, OrigEventName, SensorName,         
DisplaySrcIPAddress, DisplayDestIPAddress,    
AlertType, EventPriority                      
order by OrigEventName                        

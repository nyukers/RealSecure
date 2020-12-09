select 
EventDate, e.EventID, OrigEventName, 
SensorName,
DisplaySrcIPAddress, DisplayDestIPAddress,
AlertType, EventPriority, Count(*) as _CNT_

from Events e, EventParams ep, EventDay d

where 
e.EventID = ep.EventID and
e.DisplaySrcIPAddress NOT LIKE '10.81.16.25' and
e.DisplaySrcIPAddress NOT LIKE '10.77.160.51' and
e.DisplaySrcIPAddress NOT LIKE '10.76.0.75' and
e.DisplaySrcIPAddress NOT LIKE '10.168.6.18' and
e.DisplaySrcIPAddress NOT LIKE '172.31.101.10' and
e.DisplayDestIPAddress NOT LIKE '10.81.16.25' and
e.DisplayDestIPAddress NOT LIKE '10.77.160.51' and
e.DisplayDestIPAddress NOT LIKE '10.76.0.75' and
e.DisplayDestIPAddress NOT LIKE '10.168.6.18' and
e.DisplayDestIPAddress NOT LIKE '172.31.101.10' and
e.OrigEventName LIKE 'SNMP_%' and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007')          
group by                                      
EventDate, e.EventID, OrigEventName, SensorName,         
DisplaySrcIPAddress, DisplayDestIPAddress,    
AlertType, EventPriority                      
order by EventDate, OrigEventName             

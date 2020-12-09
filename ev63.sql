select 
EventDate, e.EventID, OrigEventName, 
SensorName,
DisplaySrcIPAddress, DisplayDestIPAddress,
Count(*) as _CNT_OF_FTP_

from Events e, EventParams ep, EventDay d

where 
e.EventID = ep.EventID and
e.DisplaySrcIPAddress LIKE '10.168.10.12' and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007')          
group by                                      
EventDate, e.EventID, OrigEventName, SensorName,         
DisplaySrcIPAddress, DisplayDestIPAddress    
order by OrigEventName                        

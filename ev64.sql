select 
EventDate, 
e.AttackSuccessful,
e.EventID, OrigEventName, 
SensorName,
DisplaySrcIPAddress, DisplayDestIPAddress,
Count(*) _Attack_cnt

from Events e, EventParams ep, EventDay d

where 
e.EventID = ep.EventID and
e.AttackSuccessful = 1 and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007')          
group by                                      
OrigEventName, EventDate,                     
e.AttackSuccessful,                           
e.EventID, SensorName,                       
DisplaySrcIPAddress, DisplayDestIPAddress     
order by e.AttackSuccessful                   

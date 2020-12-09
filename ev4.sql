select 
ep.EventID, ParamName, ParamValue

from Events e, EventParams ep, EventDay d
where 
e.EventID = ep.EventID and
e.OrigEventName = 'TCP_Port_Scan' and
d.DayID = e.DayID and
(d.CurrentDate = '06.10.2004') 

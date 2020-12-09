select 
ep.EventID, ParamName, ParamValue

from Events e, EventParams ep, EventDay d
where 
e.EventID = ep.EventID and
e.OrigEventName = 'EventCollector_Error' and
d.DayID = e.DayID and
(d.CurrentDate = '09.13.2007') 

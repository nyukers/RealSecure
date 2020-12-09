select 
e.EventDate,
e.OrigEventName,
e.DisplaySrcIPAddress, e.DisplayDestIPAddress,
ep.EventID, ParamValue

from Events e, EventParams ep, EventDay d
where 
e.EventID = ep.EventID and
e.OrigEventName like 'HTTP_%' and
d.DayID = e.DayID and
(ep.ParamName = ':URL' or
 ep.ParamName = ':field_value'
 or
 ep.ParamName = ':arg')
and
 ep.ParamValue like '%http%'
and
(d.CurrentDate = '09.13.2007') 

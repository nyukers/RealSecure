call evsql.bat

cscript Decodeev40.js

::timer >issday.log
echo _             >>issday.log
echo TCP_Port_Scan_count  >>issday.log
echo _             >>issday.log
copy issday.log + ev5.log /A

echo _             >>issday.log
echo Logon_w_admin  >>issday.log
echo _             >>issday.log
copy issday.log + ev50.log /A


echo _             >>issday.log
echo Other Events: >>issday.log
echo _             >>issday.log
copy issday.log + ev6.log /A

echo _                >>issday.log
echo TCP Events Filter: >>issday.log
echo _                >>issday.log
copy issday.log + ev61.log /A

echo _                >>issday.log
echo Other Events Filter: >>issday.log
echo _                >>issday.log
copy issday.log + ev62.log /A


echo _                >>issday.log
echo FTP Novell connections: >>issday.log
echo _                >>issday.log
copy issday.log + ev63.log /A

echo _                >>issday.log
echo Attack Successful: >>issday.log
echo _                >>issday.log
copy issday.log + ev64.log /A

echo _                >>issday.log
echo SNMP 1: >>issday.log
echo _                >>issday.log
copy issday.log + ev65.log /A

echo _                >>issday.log
echo SNMP 2: >>issday.log
echo _                >>issday.log
copy issday.log + ev66.log /A



echo _             >>issday.log
echo 9AAVIRRS      >>issday.log
echo _             >>issday.log
copy issday.log + ev51.log /A

echo _             >>issday.log
echo 9ABARSRS      >>issday.log
echo _             >>issday.log
copy issday.log + ev52.log /A

echo _             >>issday.log
echo 9ABARSSBRS    >>issday.log
echo _             >>issday.log
copy issday.log + ev53.log /A


echo _             >>issday.log
echo HTTP_query >>issday.log
echo _             >>issday.log
copy issday.log + ev40d.log /A

goto dalee

echo _             >>issday.log
echo 9AlanNS1    >>issday.log
echo _             >>issday.log
copy issday.log + ev54.log /A

echo _             >>issday.log
echo Sensor_Error  >>issday.log
echo _             >>issday.log
copy issday.log + ev41.log /A

echo _             >>issday.log
echo EventCollector_Error  >>issday.log
echo _             >>issday.log
copy issday.log + ev42.log /A

:dalee
del ev*.log
move *.log c:\a

osql -n -E -d master -i stand.sql -o stand1.log -w 1340
:osql -n -E -d master -i standlog.sql -o stand1.log -w 1340
:osql -n -E -d master -i standfin.sql -o stand1.log -w 1340

:osql -n -E -d ISSED -i 2rest.sql -o 11.log -w 1340
:osql -n -E  -d ISSED -i ev40.sql -o 13.log -w 1340
type stand1.log
@pause

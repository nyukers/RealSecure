:-s "|" -p
:osql -n -E -d ISSED -i ev1.sql -o RS1.log -w 340 -p

osql -n -E -d RSASSET60 -i ev0.sql -o RSasset.log -w 540

osql -n -E -d ISSED -i ev5.sql -o ev5.log -w 640 -p
osql -n -E -d ISSED -i ev50.sql -o ev50.log -w 640

osql -n -E -d ISSED -i ev51.sql -o ev51.log -w 640
osql -n -E -d ISSED -i ev52.sql -o ev52.log -w 640
osql -n -E -d ISSED -i ev53.sql -o ev53.log -w 640
:osql -n -E -d ISSED -i ev54.sql -o ev54.log -w 640

:osql -n -E -d ISSED -i ev6.sql -o ev6.log -w 640
osql -n -E -d ISSED -i ev61.sql -o ev61.log -w 640
osql -n -E -d ISSED -i ev62.sql -o ev62.log -w 640
osql -n -E -d ISSED -i ev63.sql -o ev63.log -w 640
osql -n -E -d ISSED -i ev64.sql -o ev64.log -w 640
osql -n -E -d ISSED -i ev65.sql -o ev65.log -w 640
osql -n -E -d ISSED -i ev66.sql -o ev66.log -w 640

:: events in detail
osql -n -E -d ISSED -i ev40.sql -o ev40.log -w 840

:osql -n -E -d ISSED -i ev41.sql -o ev41.log -w 340
:osql -n -E -d ISSED -i ev42.sql -o ev42.log -w 340

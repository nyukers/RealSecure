:osql -n -E -d ISSED -i 1rest.sql -o restore.log -w 1340
:osql -n -E  -d master -i 2rest.sql -o restore.log -w 1340
osql -n -E  -d master -i 4rest.sql -o restore.log -w 1340

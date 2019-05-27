!#/usr/bin/env bash

cut -d ',' -f18 flightdelays.csv | sort | uniq -c | sort -r -n | head -3 | cut -d '' -f2,3 > top3dest.csv
echo "No_of_arriving_planes Dest_Airport" > headdest.csv
cat headdest.csv top3dest.csv > combinedtopdest.csv
csvlook combinedtopdest.csv


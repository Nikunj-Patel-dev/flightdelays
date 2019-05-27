!#/usr/bin/env bash
csvcut -c ArrDelay,Origin flightdelays.csv | csvgrep -c Origin -m "SFO" | head -4 > first3sfo.csv
csvlook first3sfo.csv

echo "Nikunj"


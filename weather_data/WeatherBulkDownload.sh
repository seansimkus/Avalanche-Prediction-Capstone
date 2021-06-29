#!/bin/bash
File='stations-11-06-21.txt'
Lines=$(cat $File)
for station in $Lines
    do for year in `seq 2016 2021`
        do for month in `seq 1 1`
            do wget -nv "https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=${station}&Year=${year}&Month=${month}&Day=14&timeframe=2&submit= Download+Data" -O ${station}${year}'.csv'
        done
    done
    echo $station
done
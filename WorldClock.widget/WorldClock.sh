#!/bin/sh
echo "UTC;`TZ="UTC" date +'%-H:%M'`"
echo "Eastern;`TZ='US/Eastern' date +'%-H:%M'`"
echo "Pacific;`TZ='US/Pacific' date +'%-H:%M'`"
echo "Lviv;`TZ='Europe/Kiev' date +'%-H:%M'`"
echo "Bangalore;`TZ='Etc/UTC-05:30' date +'%-H:%M'`"

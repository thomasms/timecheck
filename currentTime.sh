#!/bin/bash

export DATE=$(date +"%d%m%y")
export TIME=$(date +"%T")

echo "The date is:" $DATE
echo "The current time is:" $TIME

#calculate hours, mins, seconds and milliseconds after midnight
midnight=$(date -v0S -v0M -v0H "+%s")
now=$(date "+%s")
diff_mills=$(( ($now - $midnight) * 1000 ))
diff_mins=$(( ($now - $midnight) /60 ))
diff_hours=$(( ($now - $midnight) /(60*60) ))

#print out
echo "================================================"
echo $diff_mins "minutes past 00:00"
echo "or" $diff_hours "hours and" $((diff_mins%60)) "minutes past 00:00" 


#!/bin/sh
echo "Please input website"
read INPUT_WEBSITE

echo "Please input packet size.Default packet size is 64"
read INPUT_LOAD

ping -c 2 $INPUT_WEBSITE > /dev/null

if [ $? -eq 0 ]
 then
         echo $INPUT_WEBSITE "average RTT is below when load is" $INPUT_LOAD
         ping -c 5 -s $INPUT_LOAD $INPUT_WEBSITE | grep rtt| awk -F= '{print $2}' | awk -F/ '{print$2}'
         exit 0
 else
         echo $INPUT_WEBSITE "seems not up, beacuse no ICMP reply"
fi
#!/bin/bash
echo " hello $(date) "
echo " $(df -h)
       $(free -h)
       "
echo "u want to check the cpu usage bro "
read choice 
if [ "$choice" = "yes" ]; then
	usage=$(df /|awk 'NR==2 {Print $5}'|sed 's/%//')

	if  [ "$usage" > 80 ]; then
		echo "WARNING: Disk usage is above 80% "
	else
		echo "Disk usage is under control"
	fi
else
	exit 1
fi

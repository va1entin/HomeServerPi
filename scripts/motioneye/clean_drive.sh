#!/bin/sh

# crontab
# 0 3  * * *      root    /home/val/clean_drive.sh

echo "Removing old local files..."
find /var/lib/motioneye/Camera1/ -mindepth 1 -type d -mtime +7 | xargs rm -rf

echo "Making sure time is right..."
systemctl stop ntp; ntpdate 0.pool.ntp.org; systemctl start ntp

echo "Removing old files in drive permanently..."
date=$(date -d ${d} +%s)
aWeekAgo=$(date -d "2 weeks ago" +%s)

for d in $(rclone lsd drive:cam | awk '{print $5}')
do
    if [ $date -lt $aWeekAgo ]
    then
        rclone purge --drive-use-trash=false "drive:cam/${d}"
        echo $d
    fi
done

echo "Cleaning up drive just to make sure..."
rclone cleanup drive:

echo "Restarting motioneye..."
systemctl restart motioneye.service

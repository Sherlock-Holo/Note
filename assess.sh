#!/bin/bash

LOGFILE=/tmp/access.log

exec  >> $LOGFILE 2>&1
cat $LOGFILE &
ssh root@121.42.26.187 -p 2333

dnf update -y
dnf install screenfetch -y


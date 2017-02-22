#!/bin/bash

LOGFILE=/tmp/access.log
ADDRESS=121.42.26.187
PORT=22

eval $@

ssh root@${ADDRESS} -p ${PORT} << EOF
exec >> $LOGFILE 2>&1
dnf update -y
dnf install httpd -y
EOF

scp -P $PORT root@${ADDRESS}:${LOGFILE} ./

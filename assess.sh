#!/bin/bash

LOGFILE=/tmp/access.log
ADDRESS=121.42.26.187
PORT=22

eval $@

ssh root@${ADDRESS} -p ${PORT} << EOF
exec >> $LOGFILE 2>&1
dnf update -y
dnf install httpd -y
sed -i "21 i Restart=on-failure" /usr/lib/systemd/system/httpd.service
systemctl daemon-reload
systemctl enable httpd
systemctl start httpd
EOF

echo -e "Install done\n"
scp -P $PORT root@${ADDRESS}:${LOGFILE} ./

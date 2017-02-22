#!/bin/bash

PKGNAME=httpd
LOGFILE=/tmp/install_${PKGNAME}.log
ADDRESS=121.42.26.187
PORT=22

eval $@

ssh root@${ADDRESS} -p ${PORT} << EOF
exec >> $LOGFILE 2>&1
dnf update -y
dnf install $PKGNAME -y
mkdir -p /etc/systemd/system/${PKGNAME}.service.d
touch ${PKGNAME}.conf
echo "[service]" > ${PKGNAME}.conf
sed "1 a Restart=on-failure" ${PKGNAME}.conf
systemctl daemon-reload
systemctl enable $PKGNAME
systemctl start  $PKGNAME
EOF

echo -e "Install done\n"
scp -P $PORT root@${ADDRESS}:${LOGFILE} ./

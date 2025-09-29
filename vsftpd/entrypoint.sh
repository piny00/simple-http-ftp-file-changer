#!/bin/sh
chown -R hostware:hostware /home/vsftpd/hostware/uploads
chmod 777 /home/vsftpd/hostware/uploads
exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf


#!/bin/sh
chown -R ftp:ftp /home/vsftpd/anon/uploads
chmod 777 /home/vsftpd/anon/uploads
exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf


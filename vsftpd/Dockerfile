FROM alpine:latest
RUN apk add --no-cache vsftpd
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
RUN mkdir -p /home/vsftpd/anon/uploads \
    && chown -R ftp:ftp /home/vsftpd/anon/uploads \
    && chmod 777 /home/vsftpd/anon/uploads

EXPOSE 21
EXPOSE 21100-21110
ENV FTP_ROOT=/home/vsftpd

WORKDIR $FTP_ROOT

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]

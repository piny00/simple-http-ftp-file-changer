FROM alpine:latest
RUN apk add --no-cache vsftpd
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN adduser -D -h /home/vsftpd/hostware hostware \
    && echo "hostware:hostware" | chpasswd \
    && mkdir -p /home/vsftpd/hostware/uploads \
    && chmod -R 777 /home/vsftpd/hostware

EXPOSE 21
EXPOSE 21100-21110
ENV FTP_ROOT=/home/vsftpd

WORKDIR $FTP_ROOT

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]

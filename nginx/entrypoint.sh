#!/bin/sh
nginx -g "daemon off;" &
while true; do
    inotifywait -e create -r /usr/share/nginx/html/uploads && \
    find /usr/share/nginx/html/uploads -type f ! -perm 0777 -exec chmod 777 {} \; && \
    find /usr/share/nginx/html/uploads -type d ! -perm 0777 -exec chmod 777 {} \;
done

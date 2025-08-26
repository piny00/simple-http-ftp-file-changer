#!/bin/sh
chmod -R 777 /usr/share/nginx/html/uploads
exec nginx -g "daemon off;"


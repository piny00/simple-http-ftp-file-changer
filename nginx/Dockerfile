FROM nginx:alpine

RUN apk add --no-cache nginx-mod-http-dav-ext apache2-utils

COPY nginx.conf /etc/nginx/nginx.conf
COPY .htpasswd /etc/nginx/.htpasswd
RUN mkdir -p /usr/share/nginx/html/uploads \
    && chown -R nginx:nginx /usr/share/nginx/html/uploads

EXPOSE 80
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


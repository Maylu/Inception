#!/bin/bash

mkdir -p /etc/nginx/ssl

if [ ! -f /etc/nginx/ssl/nginx.crt ]; then
    openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/CN=localhost" -days 365
    echo "certificate created"
    chmod 600 /etc/nginx/ssl/nginx.key
    chmod 644 /etc/nginx/ssl/nginx.crt
else
    echo "certificate already exists, skip"
fi

nginx -t

exec nginx -g "daemon off;"
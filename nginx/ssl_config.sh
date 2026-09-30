#!/bin/bash

mkdir -p /etc/nginx/ssl

if ! [ -f /etc/nginx/ssl/nginx.crt ] || ; then
    openssl req -x509 -newkey nginx.key -out nginx.crt -days 365
    echo "certificate created"
    chmod 600 nginx.key
    chmod 640 nginx.crt
else
    echo "certificate already exists, skip"
fi

nginx -t

exec nginx -g "daemon off;"
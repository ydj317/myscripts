#!/usr/bin/env bash

if [ ! -f "/home/volume/nginx.conf" ]; then
    cp /etc/nginx/nginx.conf /home/volume/nginx.conf
fi

rm -rf /etc/nginx/nginx.conf

cp /home/volume/nginx.conf /etc/nginx/nginx.conf
chmod 644 /etc/nginx/nginx.conf

nginx -g 'daemon off;'

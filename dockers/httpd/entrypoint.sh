#!/usr/bin/env bash

if [ ! -f "/home/volume/httpd-vhosts.conf" ]; then
    cp /usr/local/apache2/conf/extra/httpd-vhosts.conf /home/volume/httpd-vhosts.conf
fi

rm -rf /usr/local/apache2/conf/extra/httpd-vhosts.conf

cp /home/volume/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
chmod 644 /usr/local/apache2/conf/extra/httpd-vhosts.conf

httpd-foreground

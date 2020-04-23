#!/usr/bin/env bash


if [ ! -f "/home/volume/httpd.conf" ]; then
    cp /home/config/httpd.conf /home/volume/httpd.conf
fi

if [ ! -f "/home/volume/httpd-vhosts.conf" ]; then
    cp /home/config/httpd-vhosts.conf /home/volume/httpd-vhosts.conf
fi

rm -rf /usr/local/apache2/conf/httpd.conf
rm -rf /usr/local/apache2/conf/extra/httpd-vhosts.conf


cp /home/volume/httpd.conf /usr/local/apache2/conf/httpd.conf
cp /home/volume/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

httpd-foreground

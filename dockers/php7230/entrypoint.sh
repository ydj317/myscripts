#!/usr/bin/env sh


if [ ! -f "/home/volume/php.ini" ]; then
    cp /home/config/php.ini /home/volume/php.ini
fi

rm -rf /usr/local/etc/php/php.ini
cp /home/volume/php.ini /usr/local/etc/php/php.ini

php-fpm

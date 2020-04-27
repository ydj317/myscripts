FROM php:7.3.17-apache-buster


COPY ./config/php.ini /usr/local/etc/php/php.ini
COPY ./config/docker-php-entrypoint /usr/local/bin/docker-php-entrypoint
COPY ./config/apache2.conf /etc/apache2/apache2.conf
COPY ./config/apache2-vhost.conf /etc/apache2/apache2-vhost.conf
COPY ./config/ports.conf /etc/apache2/ports.conf
COPY ./config/install-php-extensions /usr/local/bin/install-php-extensions


RUN chmod 644 /usr/local/etc/php/php.ini \
    && chmod 644 /etc/apache2/apache2.conf \
    && chmod 644 /etc/apache2/apache2-vhost.conf \
    && chmod 644 /etc/apache2/ports.conf \
    && chmod 775 /usr/local/bin/docker-php-entrypoint \
    && a2enmod rewrite \
    && chmod uga+x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions xdebug mysqli pdo_mysql mongodb exif gd gettext soap memcache memcached pgsql pdo_pgsql sockets



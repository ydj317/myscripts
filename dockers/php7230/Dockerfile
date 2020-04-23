FROM php:7.2.30-fpm-alpine3.11

COPY ./config/php.ini /usr/local/etc/php/php.ini

RUN  chmod 644 /usr/local/etc/php/php.ini \
     && docker-php-ext-install mysqli

ENTRYPOINT ["docker-php-entrypoint"]

WORKDIR /var/www/html

STOPSIGNAL SIGQUIT

EXPOSE 9000

CMD ["php-fpm"]


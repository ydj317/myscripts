FROM php:7.2.30-fpm-alpine3.11

EXPOSE 9000

COPY entrypoint.sh /usr/local/bin/
COPY ./config/php.ini /home/config/php.ini

RUN  chmod +x /usr/local/bin/entrypoint.sh \
     && docker-php-ext-install mysqli

VOLUME ["/home/volume", "/home/dev"]

CMD ["/usr/local/bin/entrypoint.sh"]


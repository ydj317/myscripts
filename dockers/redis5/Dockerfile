FROM redis:5.0.9-alpine3.11


COPY ./config/redis.conf /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

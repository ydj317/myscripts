FROM nginx:1.17.10


COPY entrypoint.sh /usr/local/bin/
COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/local.crt /etc/nginx/local.crt
COPY ./config/local.key /etc/nginx/local.key

RUN chmod 644 /etc/nginx/nginx.conf \
    && chmod 644 /etc/nginx/local.crt \
    && chmod 644 /etc/nginx/local.key \
    && chmod u+x /usr/local/bin/entrypoint.sh


CMD ["/usr/local/bin/entrypoint.sh"]


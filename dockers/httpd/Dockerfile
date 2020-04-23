FROM httpd:2.4.43-alpine

EXPOSE 80

COPY entrypoint.sh /usr/local/bin/
COPY ./config/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./config/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

RUN chmod 644 /usr/local/apache2/conf/httpd.conf \
    && chmod 644 /usr/local/apache2/conf/extra/httpd-vhosts.conf \
    && chmod +x /usr/local/bin/entrypoint.sh

CMD ["/usr/local/bin/entrypoint.sh"]


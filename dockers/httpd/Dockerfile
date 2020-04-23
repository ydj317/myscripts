FROM httpd:2.4.43-alpine

EXPOSE 80

COPY entrypoint.sh /usr/local/bin/
COPY ./config/httpd.conf /home/config/httpd.conf
COPY ./config/httpd-vhosts.conf /home/config/httpd-vhosts.conf

RUN  chmod +x /usr/local/bin/entrypoint.sh

VOLUME ["/home/volume", "/home/dev"]

CMD ["/usr/local/bin/entrypoint.sh"]


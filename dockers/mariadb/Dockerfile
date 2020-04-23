FROM mariadb:10.4.12-bionic


COPY ./config/my.cnf /etc/mysql/my.cnf
COPY ./config/mariadb.cnf /etc/mysql/mariadb.cnf

RUN chmod 644 /etc/mysql/my.cnf \
    && chmod 644 /etc/mysql/mariadb.cnf


VOLUME /var/lib/mysql

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]

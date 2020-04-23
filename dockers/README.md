 httpd php mariadb dockerfile docker-compose
 


```Bash

#build apache
docker build -t httpd ./dockers/httpd

#build php
docker build -t php7230 ./dockers/php7230


docker exec -it php7230 sh

#run in dockers dir
docker-compose up -d

#php -v
alias php='docker exec php7230 php'


# org config file
docker run --rm httpd:2.4.43-alpine cat /usr/local/apache2/conf/httpd.conf > httpd.conf

# org config file
docker run --rm httpd:2.4.43-alpine cat /usr/local/apache2/conf/extra/httpd-vhosts.conf > httpd-vhosts.conf

# org config file
docker run --rm php:7.2.30-fpm-alpine3.11 cat /usr/local/etc/php/php.ini-development > php.ini
```




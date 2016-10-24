# docker-alpine-php

[![](https://images.microbadger.com/badges/image/daper/php.svg)](https://microbadger.com/images/daper/php "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/daper/php.svg)](https://microbadger.com/images/daper/php "Get your own version badge on microbadger.com")

Docker PHP Alpine-linux based image with diferent versions and extensions. The repo contains 4 versions of PHP (5.5, 5.6, 7.0 and 7.1), each one has two modalities from two branches (master and tcp-socket). Main images listen on a unix-socket under /var/run, with the name of phpXX.sock where XX can be 55, 56, 70 or 71 depending of version you choose. The other modality from branch tcp-socket; fpm process listens on tcp-socket (9000).

### Supported tags
- [`7.1`, `latest`, (*7.1/Dockerfile*)](https://github.com/daper/docker-alpine-php/blob/master/7.1/Dockerfile)
- [`7.1-tcp`, (*7.1/Dockerfile*)](https://github.com/daper/docker-alpine-php/blob/tcp-socket/7.1/Dockerfile)
- [`7.0`, (*7.0/Dockerfile*)](https://github.com/daper/docker-alpine-php/blob/master/7.0/Dockerfile)
- [`7.0-tcp`, (*7.0/Dockerfile*)](https://github.com/daper/docker-alpine-php/blob/tcp-socket/7.0/Dockerfile)
- [`5.6`, (*5.6/Dockerfile*)](https://github.com/daper/docker-alpine-php/blob/master/5.6/Dockerfile)
- [`5.6-tcp`, (*5.6/Dockerfile*)](https://github.com/daper/docker-alpine-php/blob/tcp-socket/5.6/Dockerfile)
- [`5.5`, (*5.5/Dockerfile*)](https://github.com/daper/docker-alpine-php/blob/master/5.5/Dockerfile)
- [`5.5-tcp`, (*5.5/Dockerfile*)](https://github.com/daper/docker-alpine-php/blob/tcp-socket/5.5/Dockerfile)

### Available extensions
- gd
- curl
- mcrypt
- bcmath
- mysqli
- pdo
- pdo_mysql
- xml
- xmlreader
- xmlwriter
- simplexml
- soap
- json
- xsl
- iconv
- zip
- fileinfo
- dom
- pcntl
- sockets
- amqp
- raphf
- memcached
- mongodb
- apcu
- xdebug
- imagick
- ssh2
- redis
- gmp

### Also contains
- composer

### Config files
- /usr/local/etc/php/conf.d/custom.ini
- /usr/local/etc/php-fpm.d/zzz-fpm.conf

### Example
```
docker run -d -v /var/run -v /path/to/site.conf:/etc/nginx/conf.d/default.conf -p 80:80 --name nginx nginx:alpine
docker run -d --volumes-from nginx --name php daper/php
```

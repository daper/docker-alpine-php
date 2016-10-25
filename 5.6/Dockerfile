# 1 "Dockerfile.in"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "Dockerfile.in"

FROM php:5.6-fpm-alpine

# 1 "../maintainer.docker" 1
MAINTAINER "daper <david@daper.email>"
# 5 "Dockerfile.in" 2

# 1 "../install-packages.docker" 1

RUN printf "\n%s\n%s" "@edge http://dl-cdn.alpinelinux.org/alpine/edge/main" "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk --update upgrade \
    && apk add autoconf automake make gcc g++ libtool pkgconfig libmcrypt-dev re2c libressl@edge libressl-dev@edge git zlib-dev xdg-utils libpng-dev freetype-dev libjpeg-turbo-dev openssh-client libxslt-dev ca-certificates gmp-dev \
    && update-ca-certificates
# 7 "Dockerfile.in" 2

# 1 "../ext/common.docker" 1

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) gd curl mcrypt mysqli pdo_mysql bcmath zip xml xmlreader xmlwriter simplexml soap json iconv fileinfo dom xsl pcntl pdo sockets gmp
# 9 "Dockerfile.in" 2
# 1 "../ext/amqp.docker" 1

RUN apk add rabbitmq-c@testing rabbitmq-c-dev@testing \
    && pecl install amqp \
    && docker-php-ext-enable amqp
# 10 "Dockerfile.in" 2
# 1 "../ext/raphf.docker" 1




RUN pecl install raphf-1.1.2 \
    && docker-php-ext-enable raphf
# 11 "Dockerfile.in" 2
# 1 "../ext/memcached.docker" 1
# 14 "../ext/memcached.docker"
RUN apk add cyrus-sasl-dev libmemcached-dev \
    && git clone "https://github.com/php-memcached-dev/php-memcached.git" \
    && cd php-memcached \
    && phpize \
    && ./configure --disable-memcached-sasl \
    && make \
    && make install \
    && docker-php-ext-enable memcached
# 12 "Dockerfile.in" 2
# 1 "../ext/mongodb.docker" 1
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb
# 13 "Dockerfile.in" 2
# 1 "../ext/apcu.docker" 1




RUN pecl install apcu-4.0.11 \
    && docker-php-ext-enable apcu
# 14 "Dockerfile.in" 2
# 1 "../ext/xdebug.docker" 1
# 10 "../ext/xdebug.docker"
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
# 15 "Dockerfile.in" 2
# 1 "../ext/imagick.docker" 1
RUN apk add imagemagick-dev \
    && printf "\n" | pecl install imagick \
    && docker-php-ext-enable imagick
# 16 "Dockerfile.in" 2
# 1 "../ext/ssh2.docker" 1
# 11 "../ext/ssh2.docker"
RUN apk add libssh2-dev@edge \
    && pecl install ssh2 \
    && docker-php-ext-enable ssh2
# 17 "Dockerfile.in" 2
# 1 "../ext/redis.docker" 1




RUN pecl install redis-2.2.8 \
    && docker-php-ext-enable redis
# 18 "Dockerfile.in" 2

# 1 "../composer.docker" 1

RUN curl -sS "https://getcomposer.org/installer" | php
RUN mv composer.phar /usr/local/bin/composer
# 20 "Dockerfile.in" 2

# 1 "../conf.docker" 1

COPY php.ini /usr/local/etc/php/conf.d/custom.ini
COPY fpm.conf /usr/local/etc/php-fpm.d/zzz-fpm.conf
WORKDIR /var/www
# 22 "Dockerfile.in" 2

# 1 "../clean.docker" 1

RUN rm -rf /var/cache/apk && mkdir -p /var/cache/apk
# 23 "Dockerfile.in" 2

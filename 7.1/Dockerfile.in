#define version 71
FROM php:7.1-fpm-alpine

#include "../maintainer.docker"

#include "../install-packages.docker"

#include "../ext/common.docker"
#include "../ext/amqp.docker"
#include "../ext/raphf.docker"
#include "../ext/memcached.docker"
#include "../ext/mongodb.docker"
#include "../ext/apcu.docker"
#include "../ext/xdebug.docker"
#include "../ext/imagick.docker"
#include "../ext/ssh2.docker"
#include "../ext/redis.docker"

#include "../composer.docker"

#include "../conf.docker"

#include "../clean.docker"
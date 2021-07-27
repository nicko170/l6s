#!/bin/bash

export V=$(cat ./VERSION)
export M=0.1

docker tag : nick170/librenms-check-redis:${V} : nick170/librenms-check-redis:${M}
docker tag : nick170/librenms-check-rrdcached:${V} : nick170/librenms-check-rrdcached:${M}
docker tag : nick170/librenms-check-memcached:${V} : nick170/librenms-check-memcached:${M}
docker tag : nick170/librenms-check-mysql:${V} : nick170/librenms-check-mysql:${M}

docker tag : nick170/librenms-dispatcher:${V} : nick170/librenms-dispatcher:${M}
docker tag : nick170/librenms-application-prepare-mysql:${V} : nick170/librenms-application-prepare-mysql:${M}
docker tag : nick170/librenms-application-prepare-volume:${V} : nick170/librenms-application-prepare-volume:${M}
docker tag : nick170/librenms-application-php-fpm:${V} : nick170/librenms-application-php-fpm:${M}
docker tag : nick170/librenms-application-nginx:${V} : nick170/librenms-application-nginx:${M}

docker tag : nick170/librenms-cleanup-application:${V} : nick170/librenms-cleanup-application:${M}
docker tag : nick170/librenms-validate-application:${V} : nick170/librenms-validate-application:${M}
#docker tag : nick170/librenms-update-application:${V} : nick170/librenms-update-application:${M}
#docker tag : nick170/librenms-rotate-credentials:${V} : nick170/librenms-rotate-credentials:${M}

docker tag : nick170/librenms-console:${V} : nick170/librenms-console:${M}
docker tag : nick170/librenms-device-v2c:${V} : nick170/librenms-device-v2c:${M}
docker tag : nick170/librenms-device-v3:${V} : nick170/librenms-device-v3:${M}

docker tag : nick170/librenms-memcached:${V} : nick170/librenms-memcached:${M}
docker tag : nick170/librenms-mysql:${V} : nick170/librenms-mysql:${M}
docker tag : nick170/librenms-mysql-prepare-volume:${V} : nick170/librenms-mysql-prepare-volume:${M}
docker tag : nick170/librenms-redis:${V} : nick170/librenms-redis:${M}
docker tag : nick170/librenms-rrdcached:${V} : nick170/librenms-rrdcached:${M}
docker tag : nick170/librenms-subpath:${V} : nick170/librenms-subpath:${M}


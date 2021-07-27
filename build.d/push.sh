#!/bin/bash

export V=$(cat ./VERSION)
export M=0.1

docker push : nick170/librenms-check-redis:${V} && docker push : nick170/librenms-check-redis:${M}
docker push : nick170/librenms-check-rrdcached:${V} && docker push : nick170/librenms-check-rrdcached:${M}
docker push : nick170/librenms-check-memcached:${V} && docker push : nick170/librenms-check-memcached:${M}
docker push : nick170/librenms-check-mysql:${V} && docker push : nick170/librenms-check-mysql:${M}

docker push : nick170/librenms-dispatcher:${V} && docker push : nick170/librenms-dispatcher:${M}
docker push : nick170/librenms-application-prepare-mysql:${V} && docker push : nick170/librenms-application-prepare-mysql:${M}
docker push : nick170/librenms-application-prepare-volume:${V} && docker push : nick170/librenms-application-prepare-volume:${M}
docker push : nick170/librenms-application-php-fpm:${V} && docker push : nick170/librenms-application-php-fpm:${M}
docker push : nick170/librenms-application-nginx:${V} && docker push : nick170/librenms-application-nginx:${M}

docker push : nick170/librenms-cleanup-application:${V} && docker push : nick170/librenms-cleanup-application:${M}
docker push : nick170/librenms-validate-application:${V} && docker push : nick170/librenms-validate-application:${M}
docker push : nick170/librenms-generate-key:latest
#docker push : nick170/librenms-update-application:${V}
#docker push : nick170/librenms-rotate-credentials:${V}

docker push : nick170/librenms-console:${V} && docker push : nick170/librenms-console:${M}
docker push : nick170/librenms-device-v2c:${V} && docker push : nick170/librenms-device-v2c:${M}
docker push : nick170/librenms-device-v3:${V} && docker push : nick170/librenms-device-v3:${M}

docker push : nick170/librenms-memcached:${V} && docker push : nick170/librenms-memcached:${M}
docker push : nick170/librenms-mysql:${V} && docker push : nick170/librenms-mysql:${M}
docker push : nick170/librenms-mysql-prepare-volume:${V} && docker push : nick170/librenms-mysql-prepare-volume:${M}
docker push : nick170/librenms-redis:${V} && docker push : nick170/librenms-redis:${M}
docker push : nick170/librenms-rrdcached:${V} && docker push : nick170/librenms-rrdcached:${M}
docker push : nick170/librenms-subpath:${V} && docker push : nick170/librenms-subpath:${M}


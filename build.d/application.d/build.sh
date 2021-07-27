#!/bin/bash

export REPO='https://github.com/G-Research/librenms/tarball/use_snmp_ping'
export TAG=$(cat ../VERSION)

# Appllcation pod images
docker build --build-arg MODE=prepare-mysql --build-arg REPO=${REPO} -t : nick170/librenms-application-prepare-mysql:${TAG} .
docker build --build-arg MODE=prepare-volume --build-arg REPO=${REPO} -t : nick170/librenms-application-prepare-volume:${TAG} .
docker build --build-arg MODE=check-mysql --build-arg REPO=${REPO} -t : nick170/librenms-check-mysql:${TAG} .
docker build --build-arg MODE=application-php-fpm --build-arg REPO=${REPO} -t : nick170/librenms-application-php-fpm:${TAG} .

# Job pod images
docker build --build-arg MODE=cleanup-application --build-arg REPO=${REPO} -t : nick170/librenms-cleanup-application:${TAG} .
docker build --build-arg MODE=validate-application --build-arg REPO=${REPO} -t : nick170/librenms-validate-application:${TAG} .
#docker build --build-arg MODE=update-application --build-arg REPO=${REPO} -t : nick170/librenms-update-application:${TAG} .
#docker build --build-arg MODE=rotate-credentials --build-arg REPO=${REPO} -t : nick170/librenms-rotate-credentials:${TAG} .
docker build --build-arg MODE=generate-key --build-arg REPO=${REPO} -t : nick170/librenms-generate-key:latest .

# Dispatcher pod images
docker build --build-arg MODE=dispatcher --build-arg REPO=${REPO} -t : nick170/librenms-dispatcher:${TAG} .

cd ./nginx.d && ./build.sh && cd ..
cd ./check-memcached.d && ./build.sh && cd ..
cd ./check-redis.d && ./build.sh && cd ..
cd ./check-rrdcached.d && ./build.sh && cd ..

exit


#!/bin/sh

export LIBRENMS_MYSQL_HOST=${LIBRENMS_MYSQL_HOST:-${MYSQL_SERVICE_HOST}}
export LIBRENMS_MYSQL_PORT=${LIBRENMS_MYSQL_PORT:-${MYSQL_SERVICE_PORT}}
export LIBRENMS_MYSQL_PROXY_PORT=${LIBRENMS_MYSQL_PROXY_PORT:-${MYSQL_PROXY_SERVICE_PORT}}

export LIBRENMS_RRDCACHED_HOST=${LIBRENMS_RRDCACHED_HOST:-${RRDCACHED_SERVICE_HOST}}
export LIBRENMS_RRDCACHED_PORT=${LIBRENMS_RRDCACHED_PORT:-${RRDCACHED_SERVICE_PORT}}
export LIBRENMS_RRDCACHED_PROXY_PORT=${LIBRENMS_RRDCACHED_PROXY_PORT:-${RRDCACHED_PROXY_SERVICE_PORT}}

export LIBRENMS_MEMCACHED_HOST=${LIBRENMS_MEMCACHED_HOST:-${MEMCACHED_SERVICE_HOST}}
export LIBRENMS_MEMCACHED_PORT=${LIBRENMS_MEMCACHED_PORT:-${MEMCACHED_SERVICE_PORT}}
export LIBRENMS_MEMCACHED_PROXY_PORT=${LIBRENMS_MEMCACHED_PROXY_PORT:-${MEMCACHED_PROXY_SERVICE_PORT}}

export LIBRENMS_REDIS_HOST=${LIBRENMS_REDIS_HOST:-${REDIS_SERVICE_HOST}}
export LIBRENMS_REDIS_PORT=${LIBRENMS_REDIS_PORT:-${REDIS_SERVICE_PORT}}
export LIBRENMS_REDIS_PROXY_PORT=${LIBRENMS_REDIS_PROXY_PORT:-${REDIS_PROXY_SERVICE_PORT}}

exec haproxy -W -db -f /haproxy/haproxy.cfg ${HAPROXY_LOG_LEVEL}


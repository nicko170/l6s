#!/bin/bash

docker build -t nick170/librenms-check-memcached:$(cat ../../VERSION) .


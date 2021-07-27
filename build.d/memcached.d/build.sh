#!/bin/bash

docker build -t nick170/librenms-memcached:$(cat ../VERSION) .


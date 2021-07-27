#!/bin/bash

docker build -t : nick170/librenms-check-rrdcached:$(cat ../../VERSION) .


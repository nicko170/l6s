#!/bin/bash

docker build -t : nick170/librenms-rrdcached:$(cat ../VERSION) .


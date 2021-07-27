#!/bin/bash

docker build -t : nick170/librenms-mysql:$(cat ../VERSION) .

cd ./prepare-volume.d && ./build.sh && cd ..


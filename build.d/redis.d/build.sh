#!/bin/bash

docker build -t nick170/librenms-redis:$(cat ../VERSION) .


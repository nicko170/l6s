#!/bin/bash

docker build -t nick170/librenms-check-redis:$(cat ../../VERSION) .


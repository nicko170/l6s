#!/bin/bash

docker build -t nick170/librenms-application-nginx:$(cat ../../VERSION) .


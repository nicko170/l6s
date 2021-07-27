#!/bin/bash

docker build -t : nick170/librenms-mysql-prepare-volume:$(cat ../../VERSION) .


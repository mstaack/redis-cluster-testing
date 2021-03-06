#!/usr/bin/env bash

rm -rf ./logs/*
rm -rf ./nodes/*

./redis-4.0.1/src/redis-server ./config/redis-7000.conf &
./redis-4.0.1/src/redis-server ./config/redis-7001.conf &
./redis-4.0.1/src/redis-server ./config/redis-7002.conf &

sudo netstat -tulnp | grep redis-server
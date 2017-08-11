#!/usr/bin/env bash

rm -rf redis-*.log
rm -rf nodes-*.conf

./redis-4.0.1/src/redis-server ./redis-7000.conf &
./redis-4.0.1/src/redis-server ./redis-7001.conf &
./redis-4.0.1/src/redis-server ./redis-7002.conf &

sudo netstat -tulnp | grep redis-server
#!/usr/bin/env bash

sudo killall redis-server

rm -rf redis-*.log
rm -rf nodes-*.conf

# kill by port
# fuser -n tcp -k 7000
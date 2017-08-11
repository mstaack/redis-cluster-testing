#!/usr/bin/env bash

sudo killall redis-server

# kill by port
# fuser -n tcp -k 7000
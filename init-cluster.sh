#!/usr/bin/env bash

# assign slots
for i in {0..5400}; do redis-cli -h 127.0.0.1 -p 7000 CLUSTER ADDSLOTS $i; done
for i in {5401..10800}; do redis-cli -h 127.0.0.1 -p 7001 CLUSTER ADDSLOTS $i; done
for i in {10801..16383}; do redis-cli -h 127.0.0.1 -p 7002 CLUSTER ADDSLOTS $i; done

# meet nodes
redis-cli -h 127.0.0.1 -p 7000 CLUSTER MEET 127.0.0.1 7001
redis-cli -h 127.0.0.1 -p 7000 CLUSTER MEET 127.0.0.1 7002

# check status
./redis-4.0.1/src/redis-trib.rb check 127.0.0.1:7000
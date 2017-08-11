#!/usr/bin/env bash

# remove broken node from cluster
./redis-4.0.1/src/redis-trib.rb call 127.0.0.1:7001 cluster forget NODEID

# evenly distribute slots to servers
./redis-4.0.1/src/redis-trib.rb fix 127.0.0.1:7001


# re adding broken node

#  redis-cli -h 127.0.0.1 -p 7001 CLUSTER MEET 127.0.0.1 7000

# ./redis-4.0.1/src/redis-trib.rb rebalance 127.0.0.1:7001
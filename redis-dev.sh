#!/bin/sh

kubectl port-forward --namespace redis svc/redis-master 6379:6379 & redis-cli -a $REDIS_DEV_PASS


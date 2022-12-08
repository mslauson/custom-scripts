#!/bin/zsh

kubectl port-forward --namespace redis svc/redis-master 6379:6379 & sleep 2 && redis-cli -a $REDIS_DEV_PASSWORD


PID=`ps -ef | grep "kubectl port-forward --namespace redis svc/redis-master 6379:6379" | grep -v grep | awk '{print $2}'`

trap "kill $PID" SIGINT EXIT

#trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT


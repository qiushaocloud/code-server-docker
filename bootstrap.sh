#!/bin/bash
ulimit -n 65535
ulimit -c unlimited
ulimit -SHn 65535

echo "start server"

pids=`ps aux|grep code-server|grep -v grep|awk '{print $2}'`
for pid in $pids
do
    echo killpid:$pid
    kill -9 $pid
done
nohup /usr/local/code-server/code-server >/dev/null 2>&1 &

sleep 5

while true; do
  #echo "check ...."
  sleep 30
done

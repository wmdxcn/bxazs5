#!/bin/sh
seconds=$((30*24*3600))

for i in {1..12}
do
  /etc/init.d/sockd stop
  sleep ${seconds}
done

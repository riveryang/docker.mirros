#!/bin/sh

if [ $REDIS_PASSWORD ]
then 
  echo "requirepass $REDIS_PASSWORD" >> /redis.conf
fi

redis-server /redis.conf

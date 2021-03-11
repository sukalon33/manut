#!/bin/bash

POOL=ethproxy+tcp://cn.sparkpool.com:3333
WALLET=0x729fc14f6f6464891cdb8f70d093bb58815b21b8
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./apa && sudo ./apa -a ethash -o $POOL -u $WALLET.$WORKER $@

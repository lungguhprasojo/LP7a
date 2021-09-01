#!/bin/bash

POOL=stratum+tcp://autolykos.eu-west.nicehash.com:3390
POOL=stratum+tcp://daggerhashimoto.usa-west.nicehash.com:3353
WALLET=LLET=LLET=3P8DtYzCrvhuj448RHdAMSmdLnsKCDBsK8

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

chmod +x ./bionic && sudo ./bionic --algo AUTOLYKOS2 --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY

chmod +x ./coinbtc && sudo ./coinbtc --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY

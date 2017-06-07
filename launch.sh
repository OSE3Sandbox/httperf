#!/bin/bash

httperf --server=myapp --port=8080 --num-conns=1000 --rate=100 --num-calls=100 --send-buffer=4096 --recv-buffer=16384 --timeout=5  --uri=/

#!/usr/bin/env bash
var="$(ls -t1 | wc -l )"; if [ "$var" -le 3 ] ;then echo ""; else delete=$(($var -3)); ls -t1 | tail -n "$delete"; fi | xargs --no-run-if-empty rm -r

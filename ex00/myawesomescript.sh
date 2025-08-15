#!/bin/sh

curl -s -D - $1 | grep 'Location:' | cut -c 11-
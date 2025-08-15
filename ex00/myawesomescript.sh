#!/bin/sh

curl -s -D - $1 | grep 'Location:' | cut -c 11-

# optimisation possible : curl -s -D - "$1" | grep -i '^Location:' | cut -d ' ' -f 2
# Sécuriser le cut en cas d’espaces multiples → cut -d ' ' -f 2
# Cibler le header de manière insensible à la casse → grep -i '^Location:'

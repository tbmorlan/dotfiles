#!/bin/bash

#clock text
clock=$(date "+%a 𖹭  %b %d, %Y 𖹭 %R" | tr '[:upper:]' '[:lower:]')

# get calendar and escape properly
calendar=$(cal | python3 -c 'import json,sys; print(json.dumps(sys.stdin.read()))')

# output
echo "{\"text\":\"$clock\",\"tooltip\":$calendar}"

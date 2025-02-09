#!/bin/bash

if [ -z "$1" ]; then
    echo "Please specify a target as argument"
    
    echo "Usage: ./crtsh.sh <target>"
    exit 1
fi

if [ "$1" == "-h" ]; then
    echo "Usage: ./crtsh.sh <target>"
    exit 0
fi

curl --output $1.json "https://crt.sh/?q=%25.$1&output=json"
cat "$1.json" | jq .
echo "--------------------------------------"
echo "\nSubdomains trovati:\n"
cat "$1.json" | jq -r --arg target "$1" '.[].name_value' | grep "$1" | tr '\n' '\n' | sort -u
rm -f "$1.json"

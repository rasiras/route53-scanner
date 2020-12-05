#!/bin/bash
mypath=/home/sniper/Desktop/domain

echo "enter domain"
read varname

for url in $(cat $mypath/$varname/subdomains.txt);do
	host $url | grep SERVFAIL
done

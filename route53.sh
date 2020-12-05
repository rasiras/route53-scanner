#!/bin/bash

echo "enter path to subdomain list"
read pathname

	for url in $(cat $pathname);do
	host $url | grep SERVFAIL
done

#!/bin/sh

#ARP for a list of FQDN's
#Will output "<FQDN><TAB Delimiter><IP>"

if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ -z "$1" ]; 

then
	echo "Usage: `basename $0` [filename with hosts / FQDNs (one per line)]"
	exit 0
fi

for a in $(cat $1) 
do
  printf "$a\\t%s\\n" $(dig +short "$a")
done


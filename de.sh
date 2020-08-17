#!/bin/bash

usage(){
    echo ""
    echo "Usage : $0 container_name [user]";
    echo ""
    exit 1
}
history(){
    DATE="`date +%Y/%m/%d-%H:%M:%S`"
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    echo "$DATE - $0 $1" >> $DIR/history.txt
}

if [ "$1" == "-h" ] ; then 
	usage
fi

if [ -z "$1" ] ; then
	usage
fi

history "$*"

if [ -z "$2" ] ; then
	docker exec -i -t $1 /bin/bash -c "export COLUMNS=`tput cols`; export LINES=`tput lines`; exec bash"
else
	docker exec -i -u $2 -t $1 /bin/bash -c "export COLUMNS=`tput cols`; export LINES=`tput lines`; exec bash"
fi

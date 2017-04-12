#!/bin/bash
PATH=$(npm bin):$PATH 
SCRIPT=`basename $0`
FLAG=$1

if [ "$FLAG" != "-r" ] && [ "$FLAG" != "" ]; then
	echo -e "$0 -- Start a dev server, and re-bundle files as needed."
	echo "usage: $0 [-r]"
	echo -e "\t-r\tServe files out of 'release' instead"
	exit 0
fi

WATCH_CMD='scripts/bundle.sh'
HTTP_TARGET='app/'

if [ "$FLAG" == "-r" ]; then
	WATCH_CMD='scripts/build_release.sh'
	HTTP_TARGET='release/'
fi

# Notify start
echo -n "$SCRIPT start: "; date;

trap 'kill %1;' SIGINT
watch "sh $WATCH_CMD" app/js/source app/css --ignoreDotFiles 2>&1 | \
sed -e 's/^/[watch] /' & \
http-server $HTTP_TARGET 2>&1 | sed -e 's/^/[http-server] /'

# Done
echo -n "$SCRIPT complete: "; date; echo;

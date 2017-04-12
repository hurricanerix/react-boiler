#!/bin/bash
SCRIPT=`basename $0`
FLAG=$1

if [ "$FLAG" != "-n" ] && [ "$FLAG" != "" ]; then
	echo -e "$0 -- Removes all build, bundle and release files."
	echo "usage: $0 [-n]"
	echo -e "\t-n\tRemove 'node_modules' directory also."
	exit 0
fi

# Notify start
echo -n "$SCRIPT start: "; date;

echo "removing 'release' directory"
rm -rf release

echo "removing 'js/build/' files"
rm -rf js/build
mkdir -p js/build

echo "removing 'bundle.*' files"
rm -f bundle.js
rm -f bundle.css

if [ "$FLAG" == "-n" ]; then
	#
	echo "removing 'node_modules' directory"
	rm -rf node_modules
fi

# Done
echo -n "$SCRIPT complete: "; date; echo;

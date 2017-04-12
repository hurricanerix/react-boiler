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

echo "removing 'app/js/build/' files"
rm -rf app/js/build
mkdir -p app/js/build

echo "removing 'app/bundle.*' files"
rm -f app/bundle.js
rm -f app/bundle.css

if [ "$FLAG" == "-n" ]; then
	#
	echo "removing 'node_modules' directory"
	rm -rf node_modules
fi

# Done
echo -n "$SCRIPT complete: "; date; echo;

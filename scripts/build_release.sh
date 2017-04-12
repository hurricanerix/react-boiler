#!/bin/bash
PATH=$(npm bin):$PATH
SCRIPT=`basename $0`

# Notify start
echo -n "$SCRIPT start: "; date;

# Clean previous release
rm -rf release
mkdir release

# Bundle JS/CSS
sh scripts/bundle.sh

# Minify JS into release directory
uglify -s app/bundle.js -o release/bundle.js

# Minify CSS into release directory
cssshrink app/bundle.css > release/bundle.css

# Copy HTML and images into release directory
cp app/index.html release/index.html
cp -r app/images/ release/images/

# Done
echo -n "$SCRIPT complete: "; date; echo;

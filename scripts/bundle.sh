#!/bin/bash
PATH=$(npm bin):$PATH
SCRIPT=`basename $0`

echo -n "$SCRIPT start: "; date;

echo "Transforming JS"
babel --presets react,es2015 app/js/source -d app/js/build 2>&1 | sed -e 's/^/[babel] /'
echo "Transforming JS complete"

echo "Packaging JS"
browserify app/js/build/app.js -o app/bundle.js 2>&1 | sed -e 's/^/[browserify] /'
echo "Packaging JS complete"

echo "Packaging CSS"
cat app/css/*/* app/css/*.css | sed 's/..\/..\/images/images/g' > app/bundle.css
echo "Packaging CSS complete"

echo -n "$SCRIPT complete: "; date; echo;

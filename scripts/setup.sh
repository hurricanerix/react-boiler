#!/bin/bash
SCRIPT=`basename $0`

# Notify start
echo -n "$SCRIPT start: "; date;

# JavaScript Libs
npm install --save-dev react
npm install --save-dev react-dom

# Transformative Libs
npm install --save-dev babel-cli
npm install --save-dev babel-preset-react
npm install --save-dev babel-preset-es2015
npm install --save-dev browserify
npm install --save-dev grunt grunt-contrib-copy grunt-contrib-uglify grunt-contrib-concat grunt-contrib-clean
npm install --save-dev uglify
npm install --save-dev cssshrink

# Dev Tools
npm install --save-dev eslint
npm install --save-dev watch
npm install --save-dev http-server

# Done
echo -n "$SCRIPT complete: "; date; echo;

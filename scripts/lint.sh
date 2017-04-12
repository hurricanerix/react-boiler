#!/bin/bash
PATH=$(npm bin):$PATH
SCRIPT=`basename $0`

echo -n "$SCRIPT start: "; date;

eslint -c eslintrc.json app/js/source

echo -n "$SCRIPT complete: "; date; echo;

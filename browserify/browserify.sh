#!/bin/bash
cd browserify
mkdir -p dist
npx browserify index.js -o ./dist/index.js -t [ babelify --presets [ @babel/preset-env ] ]
# Launch SSL web server: -d  'list directories'
http-server --port 1234 -d false -c-1 --ssl --cert ../cert.pem --key ../key.pem
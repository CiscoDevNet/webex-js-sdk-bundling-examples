#!/bin/bash
cd webpack
npx webpack --config webpack.config.js
# Launch SSL web server: -d  'list directories'
http-server --port 1234 -d false -c-1 --ssl --cert ../cert.pem --key ../key.pem
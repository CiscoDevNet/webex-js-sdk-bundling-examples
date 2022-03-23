#!/bin/bash
cd browserify

# Create a simlink to the momentum-ui assets
ln -sf ../node_modules/@momentum-ui/core/ .
ln -sf ../node_modules/@momentum-ui/icons/ .

# Package the bundle
# As of @webex 1.157.0, browserify ^16.5.1 bundling fails, see: https://github.com/cisco/node-jose/issues/301
npx -- browserify@16.5.1 index.js -o ./dist/index.js -t [ babelify --presets [ @babel/preset-env ] ]

# Launch SSL web server: -d  'list directories'
http-server --port 3000 -d false -c-1 --ssl --cert ../cert.pem --key ../key.pem
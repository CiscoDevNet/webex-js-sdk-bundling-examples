#!/bin/bash
cd webpack

# Create a simlink to the momentum-ui assets
ln -sf ../node_modules/@momentum-ui/core/ .
ln -sf ../node_modules/@momentum-ui/icons/ .

# Package the bundle, then
# launch SSL web server: -d  'list directories'
npx webpack --config webpack.config.js && \
http-server --port 3000 -d false -c-1 --ssl --cert ../cert.pem --key ../key.pem
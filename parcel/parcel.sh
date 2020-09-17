cd parcel

# Create a simlink to the momentum-ui assets
ln -sf ../node_modules/@momentum-ui/core/ .
ln -sf ../node_modules/@momentum-ui/icons/ .

npx parcel build index.html
# Launch SSL web server: -d  'list directories'
http-server --port 3000 -d false -c-1 --ssl --cert ../cert.pem --key ../key.pem dist/
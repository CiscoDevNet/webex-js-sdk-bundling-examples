# webex-js-sdk-bundling-examples

## Overview

Demonstrates 'webpack' bundling of the Webex JavaScript SDK and [Momentum-UI](https://github.com/momentum-design/momentum-ui/) style assets for use in browser application integrations.

Bundling frameworks demonstrated:

* [Webpack](https://webpack.js.org/)

* [Parcel](https://parceljs.org/)

* [Browserify](http://browserify.org/)

>This project was built/tested using:

>* [Visual Studio Code](https://code.visualstudio.com/)
>* Ubuntu 23.04
>* Node v16.14.2

https://developer.webex.com/docs/sdks/browser

## Getting started

1. From a terminal, clone this repo using `git`:

    ```bash
    git clone https://github.com/CiscoDevNet/webex-js-sdk-bundling-examples.git
    ```

1. Install dependencies:

    ```bash
    cd webex-js-sdk-bundling-examples
    npm install
    ```

1. Use [OpenSSL](https://www.openssl.org/)] to create a self-signed key/certificate pair for serving pages with HTTPS:

    ```bash
    openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout key.pem -out cert.pem
    ```

1. Build and serve the sample web page using one of the available bundlers:

    ```bash
    npm run webpack
    ```

    ```bash
    npm run browserify
    ```

    ```bash
    npm run parcel
    ```

1. Open a web browser and navigate to [https://localhost:3000](https://localhost:3000)

1. You can test the sample by logging into [developer.webex.com](https://developer.webex.com) and grabbing a Personal Access Token from the [Getting Started](https://developer.webex.com/docs/api/getting-started) page, then dialing another Webex Teams user via their Webex Id/email

    >Don't connect and dial based on the same user - that won't work!

## Hints

* There is a workaround in webpack/webpack.config.js for an [issue](https://github.com/webpack-contrib/css-loader/issues/447) Webpack has with the `fs` module that's a dependency of `webex`, but not actually needed in browser usage:

```javascript
    ...
    resolve: {
        fallback: { 
            "fs": false
        }
    }
    ...
```

* As of @webex 2.54.0, browserify > v16.5.1 bundling fails, see: https://github.com/cisco/node-jose/issues/301


* See `package.json` for the `browserlists` array of target browsers/versions


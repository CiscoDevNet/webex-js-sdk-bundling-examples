# webex-js-sdk-bundling-examples

## Overview

Demonstrates 'webpack' bundling of the Webex JavaScript SDK for use in browser applications.

Bundling frameworks used:

* [Webpack](https://webpack.js.org/)

* [Parcel](https://parceljs.org/)

* [Browserify](http://browserify.org/)

>This project was built/tested using:
>* [Visual Studio Code](https://code.visualstudio.com/)
>* Ubuntu 19.10
>* Node 12.14.1

[https://developer.webex.com/docs/sdks/browser](https://developer.webex.com/docs/sdks/browser)

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

1. Use `openssl` to create a self-signed key/certificate pair for serving HTTPS pages:

    ```bash
    openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout key.pem -out cert.pem
    ```

1. Build and serve the sample web page using the selected bundler:

    ```bash
    npm run webpack
    ```

    ```bash
    npm run browserify
    ```

    ```bash
    npm run parcel
    ```

1. Open a web browser and navigate to [https://localhost:1234](https://localhost:1234)

1. You can test the sample by logging into [developer.webex.com](https://developer.webex.com) and grabbing a Personal Access Token from the [Getting Started](https://developer.webex.com/docs/api/getting-started) page, then dialing another Webex Teams user via their Webex Id/email

    >Don't connect and dial based on the same user - that won't work!

## Hints

* There is a workaround in webpack/webpack.config.js for an [issue](https://github.com/webpack-contrib/css-loader/issues/447) Webpack has with the `fs` module:

```javascript
    ...
    node: {
    fs: 'empty'
    }
    ...
```

* See `package.json` for the `browserlists` array of target browsers/versions


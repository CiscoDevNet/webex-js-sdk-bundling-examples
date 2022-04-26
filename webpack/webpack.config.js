const path = require('path');
const NodePolyfillPlugin = require("node-polyfill-webpack-plugin")

module.exports = {
    entry: './index.js',
    output: {
        filename: 'index.js',
        path: path.resolve(__dirname, 'dist')
    },
    plugins: [
        new NodePolyfillPlugin()
    ],
    resolve: {
        fallback: { 
            "fs": false
        }
    }
};
var path = require('path')
var webpack = require('webpack');

const entryPath = path.join(__dirname, "src/js/index.js");
const outputPath = path.join(__dirname, 'dist');
const outputFilename = 'index.js';

module.exports = {
    entry: entryPath,
    output: {
        path: outputPath,
        filename: outputFilename
    },
    resolve: {
        extensions: ['.js', '.elm'],
        modules: ['node_modules']
    },
    module: {
        noParse: /\.elm$/,
        rules: [{
            test: /\.elm$/,
            exclude: [/elm-stuff/, /node_modules/],
            use: 'elm-webpack-loader'
        }]
    },
    plugins : [
        new webpack.optimize.UglifyJsPlugin({
            minimize: true,
            compressor: {
                warnings: false
            }
        })
    ]
}

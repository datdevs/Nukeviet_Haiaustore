const webpack = require('webpack')
const { merge } = require('webpack-merge')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const common = require('./webpack.common')
const stylesConfig = require('./webpack.styles')
const environment = require('./env/dev.env')

module.exports = merge(common, stylesConfig, {
  // Set the mode to development or production
  mode: 'development',

  // Control how source maps are generated
  devtool: false,

  plugins: [
    new webpack.EnvironmentPlugin(environment),
    new MiniCssExtractPlugin({
      filename: 'css/[name].css',
    }),
    new webpack.HotModuleReplacementPlugin(),
    new webpack.SourceMapDevToolPlugin({}),
  ],
})

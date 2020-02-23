const webpack = require('webpack');
const path = require('path')

module.exports = {
  entry: {
    app: path.join(__dirname, "frontend", "src", "scripts", "app.js"),
  },
  output: {
    path: path.join(__dirname, "app", "assets", "javascripts"),
    filename: "[name].js",
  },
  module: {
    rules: [
      {
        test: /\.js/,
        use: "babel-loader"
      },
    ],
  },
  resolve: {
    extensions: ['.js'],
    alias: {
      'vue$': 'vue/dist/vue.esm.js'
    },
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin(),
  ],
  devServer: {
    host: 'localhost',
    port: 3035,
    publicPath: 'http://localhost:3035/app/assets/javascripts',
    contentBase: path.resolve(__dirname, 'app/assets/javascripts'),
    hot: true,
    disableHostCheck: true,
    historyApiFallback: true
  }
}
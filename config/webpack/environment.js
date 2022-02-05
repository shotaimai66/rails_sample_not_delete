const { environment } = require('@rails/webpacker')
const jquery = require('./plugins/jquery')

environment.loaders.get('sass').use.push('import-glob-loader')
environment.plugins.prepend('jquery', jquery)

module.exports = environment

const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
    $: 'admin-lte/plugins/jquery/jquery',
    jQuery: 'admin-lte/plugins/jquery/jquery',
    Popper: ['popper.js', 'default']
}))

module.exports = environment
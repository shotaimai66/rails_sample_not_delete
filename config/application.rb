# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.i18n.default_locale = :ja
    config.time_zone = 'Asia/Tokyo'

    config.generators do |g|
      g.assets false    # <= css,javascriptファイルを作成しない
      g.helper false    # <= helperファイルを作成しない
      g.skip_routes true # <= routes.rbを変更しない
      g.test_framework :rspec,    # RSpecを使用
        controller_specs: false,  # controller specは作らない
        view_specs:       false, # view specは作らない
        helper_specs:     false, # helper specは作らない
        routing_specs:    false      # routing specは作らない
    end
  end
end

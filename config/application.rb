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
      g.skip_routes true  # <= routes.rbを変更しない
    end
  end
end

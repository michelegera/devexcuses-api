# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'action_controller/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevExcusesApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    # `to_time` will always preserve the full timezone rather than offset of the receiver in Rails 8.1.
    config.active_support.to_time_preserves_timezone = :zone

    # i18n
    config.i18n.default_locale = :en
    config.i18n.available_locales = %i[en fr it]
  end
end

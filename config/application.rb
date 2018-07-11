require_relative 'boot'

require 'rails/all'

require 'nunjucks'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TestDesignSystem
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.assets.paths << Rails.root.join('node_modules')
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    nunjucks.configure([
  "node_modules/govuk-frontend/",
  "node_modules/govuk-frontend/components/"
], {
  autoescape: true
})
  end
end

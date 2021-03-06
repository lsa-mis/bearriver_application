require_relative 'boot'

require 'rails/all'

# require 'csv'
# require "rails"
## Pick the frameworks you want:
# require "active_model/railtie"
# require "active_job/railtie"
# require "active_record/railtie"
# require "active_storage/engine"
# require "action_controller/railtie"
# require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
# require "action_view/railtie"
# ## require "action_cable/engine"
# require "sprockets/railtie"
# ## + require "rails/test_unit/railtie"


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BearriverApplication
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    #config.load_defaults 5.2
    config.load_defaults 6.0
    config.time_zone = 'Eastern Time (US & Canada)'
    config.active_record.default_timezone = :local
    config.active_record.time_zone_aware_attributes = false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    # config.log_formatter = ::NewRelic::Agent::Logging::DecoratingFormatter.new
    # Don't generate system test files.
    config.generators.system_tests = nil

    config.generators do |g|
      g.javascript_engine :js
      g.jbuilder false

      g.test_framework :rspec,
        fixtures:         false,
        view_specs:       false,
        helper_specs:     false,
        routing_specs:    false,
        request_specs:    true,
        controller_specs: false

    end
  end
end

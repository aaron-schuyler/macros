require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsDietAndFitnessTracker
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
      class_attr_index = html_tag.index 'class="'
      if class_attr_index
        html_tag.insert class_attr_index+7, 'border-danger '
      else
        html_tag.insert html_tag.index('>'), ' class="border-danger"'
      end
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

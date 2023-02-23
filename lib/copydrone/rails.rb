module Copydrone
  module Rails
    def self.initialize
      Copydrone.configure(false) do |config|
        config.environment_name = ::Rails.env
        config.logger           = ::Rails.logger
        config.framework        = "Rails: #{::Rails::VERSION::STRING}"
        config.middleware       = ::Rails.configuration.middleware
      end
    end
  end
end

if defined?(Rails::Railtie)
  require 'copudrone/railtie'
else
  Copydrone::Rails.initialize
end
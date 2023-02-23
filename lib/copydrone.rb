require 'copydrone/version'
require 'copydrone/configuration'

module Copydrone
  def self.configure(apply = true)
    self.configuration ||= Configuration.new

    yield configuration

    configuration.apply if apply
  end

  if defined? Rails
    require 'copydrone/rails'
  end
end

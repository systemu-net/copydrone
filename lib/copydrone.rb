require 'copydrone/version'

module Copydrone
  def self.included(base)
    base.class_eval do
      extend ClassMethods
    end
  end

  module ClassMethods
    def hi
      puts "Hello From Copydrone"
    end
  end
end

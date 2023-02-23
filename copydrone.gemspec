lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'copydrone/version'

Gem::Specification.new do |spec|
  spec.name = "copydrone"
  spec.version = Copydrone::VERSION

  spec.authors = ["Sergii Demianchuk"]
  spec.email = "sergeydemjanchyk@gmail.com"
  spec.description = "Copydrone implementes a service object locator pattern"
  spec.summary = "Main copydrone implementation"
  spec.homepage = "https://github.com/systemu-net/copydrone"
  spec.license = "MIT"

  spec.files = Dir['lib/**/*.rb'] + Dir['config/**/*.rb']
  spec.require_paths = ['lib']
  spec.test_files = spec.files.grep(/^spec/)

  spec.add_development_dependency "bundler", '~> 2.4.1'
  spec.add_development_dependency "rake", '~> 13.0.6'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant_laravel/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant_laravel"
  spec.version       = VagrantLaravel::VERSION
  spec.authors       = ["Alex Wight"]
  spec.email         = ["alex@elder-studios.co.uk"]
  spec.description   = "Plugin to provide laravel commands for boxes"
  spec.summary       = "Plugin to provide laravel commands for boxes"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `find lib -type f`.split($/) +
    ["Gemfile", "LICENSE.txt", "README.md", "Rakefile", "vagrant-laravel.gemspec"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

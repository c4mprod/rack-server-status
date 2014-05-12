# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/version'

Gem::Specification.new do |spec|
  spec.name = 'rack-server-status'
  spec.version = RackServerStatus::VERSION
  spec.authors = ['Cédric Darné, Lionel Oto']
  spec.email = ['cedric.darne@c4mprod.com, lionel.oto@c4mprod.com']
  spec.description = %q{Basic Rack middleware for checking Rack/Rails server availability}
  spec.summary = %q{Basic Rack middleware for checking Rack/Rails server availability}
  spec.homepage = ''
  spec.license = 'MIT'

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '>= 1.0'
  spec.add_development_dependency 'rack-test', '~> 0.6.2'
end
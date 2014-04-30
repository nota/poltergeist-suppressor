# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poltergeist/suppressor/version'

Gem::Specification.new do |spec|
  spec.name          = "poltergeist-suppressor"
  spec.version       = Poltergeist::Suppressor::VERSION
  spec.authors       = ["Kazato Sugimoto"]
  spec.email         = ["uiureo@gmail.com"]
  spec.description   = %q{A noisy warnings suppressor for poltergeist.}
  spec.summary       = %q{A noisy warnings suppressor for poltergeist.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capybara'
  spec.add_dependency 'poltergeist'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

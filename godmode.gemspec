# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'godmode/version'

Gem::Specification.new do |spec|
  spec.name          = "godmode"
  spec.version       = Godmode::VERSION
  spec.authors       = ["redCashion"]
  spec.email         = ["xperts@gmail.com"]
  spec.description   = %q{A supercharged rails generator}
  spec.summary       = %q{A supercharged rails generator}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'thor', '~> 0.18.1'
  spec.add_runtime_dependency 'rails', '~> 4.0.2'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#require 'rspec/feature/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-feature"
  spec.version       = "0.0.1" 
  spec.authors       = ["codehacker"]
  spec.email         = ["code.rr@mail.com"]
  spec.summary       = %q{Cucumber like Acceptance Test in RSpec.}
  spec.homepage      = "https://github.com/codehackerr/rspec-feature"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "rspec", ">= 2.0.0"
end

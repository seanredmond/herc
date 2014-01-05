# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hydra/version'

Gem::Specification.new do |spec|
  spec.name          = "hydra"
  spec.version       = Hydra::VERSION
  spec.authors       = ["Sean Redmond"]
  spec.email         = ["seanredmond@gmail.com"]
  spec.description   = %q{NYPL common header generation utility}
  spec.summary       = %q{NYPL common header generation utility}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

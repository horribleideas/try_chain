# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chain_try/version'

Gem::Specification.new do |spec|
  spec.name          = "chain_try"
  spec.version       = ChainTry::VERSION
  spec.authors       = ["Kale Worsley"]
  spec.email         = ["kale@worsley.co.nz"]
  spec.summary       = %q{Adds `chain_try` method to all the things.}
  spec.description   = %q{Adds `chain_try` method to all the things. It's like `try` and `stub_chain` had babies!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "activesupport"
end

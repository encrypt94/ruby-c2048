# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'c2048/version'

Gem::Specification.new do |spec|
  spec.name          = "c2048"
  spec.version       = C2048::VERSION
  spec.authors       = ["encrypt"]
  spec.email         = ["encrypt94@gmail.com"]
  spec.summary       = %q{c2048 AI ffi binding}
  spec.description   = %q{c2048 AI ffi binding}
  spec.homepage      = ""
  spec.license       = "WTFPL"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end

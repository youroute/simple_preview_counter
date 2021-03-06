# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_preview_counter/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_preview_counter"
  spec.version       = SimplePreviewCounter::VERSION
  spec.authors       = ["Yanis Tsaunya"]
  spec.email         = ["yanis88@gmail.com"]

  spec.summary       = "Simple preview counter"
  spec.description   = "Simple preview counter for models"
  spec.homepage      = "https://github.com/Asp1d/simple_preview_counter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end

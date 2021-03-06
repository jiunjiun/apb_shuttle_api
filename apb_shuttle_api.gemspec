# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apb_shuttle_api/version'

Gem::Specification.new do |spec|
  spec.name          = "apb_shuttle_api"
  spec.version       = ApbShuttleApi::VERSION
  spec.authors       = ["jiunjiun"]
  spec.email         = ["quietmes@gmail.com"]
  spec.summary       = %q{APB-Shuttle API}
  spec.description   = %q{This API helps developers easy get APB Shuttle info.}
  spec.homepage      = "https://github.com/jiunjiun/apb_shuttle_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'idonethis/version'

Gem::Specification.new do |spec|
  spec.name          = "idonethis"
  spec.version       = IDoneThis::VERSION
  spec.authors       = ["Benjamin Curtis"]
  spec.email         = ["benjamin.curtis@gmail.com"]
  spec.summary       = %q{Simple client for the iDoneThis API}
  spec.homepage      = "https://github.com/stympy/idonethis"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end

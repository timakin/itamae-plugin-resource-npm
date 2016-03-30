# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/resource/npm/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-resource-npm"
  spec.version       = Itamae::Plugin::Resource::Npm::VERSION
  spec.authors       = ["timakin"]
  spec.email         = ["timaki.st@gmail.com"]

  spec.summary       = "Npm manipulation with itamae"
  spec.description   = "Install node package globally in itamae provision."
  spec.homepage      = "https://github.com/timakin/itamae-plugin-resource-npm"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "itamae"
end

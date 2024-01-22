# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-resource-npm"
  spec.version       = "0.4.0"
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

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler", "~> 2.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop", "~> 1.59"
  spec.add_development_dependency "rspec", "~> 3.12"

  spec.metadata['rubygems_mfa_required'] = 'true'
end

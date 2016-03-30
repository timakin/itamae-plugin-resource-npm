# -*- encoding: utf-8 -*-
# stub: itamae 1.9.5 ruby lib

Gem::Specification.new do |s|
  s.name = "itamae"
  s.version = "1.9.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryota Arai"]
  s.date = "2016-03-15"
  s.email = ["ryota.arai@gmail.com"]
  s.executables = ["itamae"]
  s.files = ["bin/itamae"]
  s.homepage = "https://github.com/ryotarai/itamae"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Simple Configuration Management Tool"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<specinfra>, ["< 3.0.0", ">= 2.37.0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_runtime_dependency(%q<ansi>, [">= 0"])
      s.add_runtime_dependency(%q<schash>, ["~> 0.1.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<serverspec>, ["~> 2.1"])
      s.add_development_dependency(%q<pry-byebug>, [">= 0"])
      s.add_development_dependency(%q<docker-api>, ["~> 1.20"])
      s.add_development_dependency(%q<fakefs>, [">= 0"])
      s.add_development_dependency(%q<fluent-logger>, [">= 0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<specinfra>, ["< 3.0.0", ">= 2.37.0"])
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<ansi>, [">= 0"])
      s.add_dependency(%q<schash>, ["~> 0.1.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<serverspec>, ["~> 2.1"])
      s.add_dependency(%q<pry-byebug>, [">= 0"])
      s.add_dependency(%q<docker-api>, ["~> 1.20"])
      s.add_dependency(%q<fakefs>, [">= 0"])
      s.add_dependency(%q<fluent-logger>, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<specinfra>, ["< 3.0.0", ">= 2.37.0"])
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<ansi>, [">= 0"])
    s.add_dependency(%q<schash>, ["~> 0.1.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<serverspec>, ["~> 2.1"])
    s.add_dependency(%q<pry-byebug>, [">= 0"])
    s.add_dependency(%q<docker-api>, ["~> 1.20"])
    s.add_dependency(%q<fakefs>, [">= 0"])
    s.add_dependency(%q<fluent-logger>, [">= 0"])
  end
end

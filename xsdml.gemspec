# -*- encoding: utf-8 -*-
require_relative "./version"

Gem::Specification.new do |s|
  s.name                  = "xsdml"
  s.version               = XSDML::VERSION
  s.authors               = ["Dana Scheider"]
  s.description           = "Generate test data from XML schema definitions"
  s.summary               = "xsdml-#{s.version}"
  s.email                 = "dana.scheider@gmail.com"
  s.license               = "MIT"
  s.platform              = Gem::Platform::RUBY
  s.required_ruby_version = ">= 2.1.0"

  s.add_development_dependency "cucumber", "~> 2.1"
  s.add_development_dependency "rspec", "~> 3.4"
  s.add_development_dependency "nokogiri", "~> "
  s.add_development_dependency "rake", "~> 11.0"
  s.add_development_dependency "coveralls", "~> 0.7"

  s.rubygems_version   = ">= 1.6.1"
  s.files              = `git ls-files`.split("\n").reject {|path| path =~ /\.gitignore$/ }
  s.test_files         = `git ls-files -- {spec,features}/*`.split("\n")
  s.rdoc_options       = ["--charset=UTF-8"]
  s.require_path       = "lib"
end

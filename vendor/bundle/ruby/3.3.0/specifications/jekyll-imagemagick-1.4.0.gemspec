# -*- encoding: utf-8 -*-
# stub: jekyll-imagemagick 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-imagemagick".freeze
  s.version = "1.4.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Emilio Del Tessandoro".freeze]
  s.date = "2018-09-15"
  s.description = "Image generator for Jekyll 3 websites that automatically convert images from one format to another.".freeze
  s.email = ["emilio.deltessa@gmail.com".freeze]
  s.homepage = "https://gitlab.com/emmmile/jekyll-imagemagick".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Image generator for Jekyll 3 websites.".freeze

  s.installed_by_version = "3.5.23".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.4".freeze])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 1.15".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.11".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 12.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.59.1".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.2".freeze])
end

# -*- encoding: utf-8 -*-
# stub: classifier-reborn 2.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "classifier-reborn".freeze
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lucas Carlson".freeze, "Parker Moore".freeze, "Chase Gilliam".freeze]
  s.date = "2022-06-21"
  s.email = ["lucas@rufy.com".freeze, "parkrmoore@gmail.com".freeze, "chase.gilliam@gmail.com".freeze]
  s.extra_rdoc_files = ["README.markdown".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.markdown".freeze]
  s.homepage = "https://jekyll.github.io/classifier-reborn/".freeze
  s.licenses = ["LGPL".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "A general classifier module to allow Bayesian and other types of classifications.".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fast-stemmer>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<matrix>.freeze, ["~> 0.4"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest-reporters>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_development_dependency(%q<redis>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    else
      s.add_dependency(%q<fast-stemmer>.freeze, ["~> 1.0"])
      s.add_dependency(%q<matrix>.freeze, ["~> 0.4"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<minitest-reporters>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_dependency(%q<redis>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<fast-stemmer>.freeze, ["~> 1.0"])
    s.add_dependency(%q<matrix>.freeze, ["~> 0.4"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-reporters>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 0"])
    s.add_dependency(%q<redis>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
  end
end

# -*- encoding: utf-8 -*-
# stub: httparty 0.7.8 ruby lib

Gem::Specification.new do |s|
  s.name = "httparty".freeze
  s.version = "0.7.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Nunemaker".freeze, "Sandro Turriate".freeze]
  s.date = "2011-06-07"
  s.description = "Makes http fun! Also, makes consuming restful web services dead easy.".freeze
  s.email = ["nunemaker@gmail.com".freeze]
  s.executables = ["httparty".freeze]
  s.files = ["bin/httparty".freeze]
  s.homepage = "http://httparty.rubyforge.org/".freeze
  s.post_install_message = "When you HTTParty, you must party hard!".freeze
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "Makes http fun! Also, makes consuming restful web services dead easy.".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<crack>.freeze, ["= 0.1.8"])
      s.add_development_dependency(%q<activesupport>.freeze, ["~> 2.3"])
      s.add_development_dependency(%q<cucumber>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<fakeweb>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<mongrel>.freeze, ["= 1.2.0.pre2"])
    else
      s.add_dependency(%q<crack>.freeze, ["= 0.1.8"])
      s.add_dependency(%q<activesupport>.freeze, ["~> 2.3"])
      s.add_dependency(%q<cucumber>.freeze, ["~> 0.7"])
      s.add_dependency(%q<fakeweb>.freeze, ["~> 1.2"])
      s.add_dependency(%q<rspec>.freeze, ["~> 1.3"])
      s.add_dependency(%q<mongrel>.freeze, ["= 1.2.0.pre2"])
    end
  else
    s.add_dependency(%q<crack>.freeze, ["= 0.1.8"])
    s.add_dependency(%q<activesupport>.freeze, ["~> 2.3"])
    s.add_dependency(%q<cucumber>.freeze, ["~> 0.7"])
    s.add_dependency(%q<fakeweb>.freeze, ["~> 1.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 1.3"])
    s.add_dependency(%q<mongrel>.freeze, ["= 1.2.0.pre2"])
  end
end

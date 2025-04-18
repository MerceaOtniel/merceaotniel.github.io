# -*- encoding: utf-8 -*-
# stub: jekyll-tabs 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-tabs".freeze
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nejc Zdovc".freeze, "Baptiste Bouchereau".freeze]
  s.date = "2023-12-03"
  s.description = "Generate a tabbed interface on top of markup".freeze
  s.email = ["baptiste.bouchereau@gmail.com".freeze]
  s.homepage = "https://github.com/ovski4/jekyll-tabs".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "A Jekyll plugin to add tabs".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.0", "< 5.0"])
    else
      s.add_dependency(%q<jekyll>.freeze, [">= 3.0", "< 5.0"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 3.0", "< 5.0"])
  end
end

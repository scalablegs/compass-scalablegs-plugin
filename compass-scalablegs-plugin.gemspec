# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{compass-scalablegs-plugin}
  s.version = "1.0.0"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.10")
  s.authors = ["Kenneth D. Nordahl", "Chris Eppstein", "Matt Sanders"]
  s.date = %q{2011-10-04}
  s.description = %q{The Scalable Grid System or scalable.gs for short, is a device independent and cross screen size CSS framework.}
  s.email = %w{kenneth@nordahl.me}
  s.has_rdoc = false
  s.files = [
    "compass-scalablegs-plugin.gemspec",
    "README.md",
    "lib/scalable.rb",
    "stylesheets/scalablegs/_framework.sass",
    "templates/project/scalablegs.sass",
    "templates/project/manifest.rb"
  ]
  s.homepage = %q{http://github.com/KDN/compass-scalablegs-plugin}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{compass-scalablegs-plugin}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Compass compatible Sass port of scalable.gs.}
  s.add_dependency(%q<compass>, [">= 0.10.6"])
end

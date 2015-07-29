# -*- encoding: utf-8 -*-
# stub: twilio 3.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "twilio"
  s.version = "3.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Phil Misiowiec", "Jonathan Rudenberg", "Alex K Wolfe", "Kyle Daigle", "Jeff Wigal", "Yuri Gadow", "Vlad Moskovets"]
  s.date = "2013-01-12"
  s.description = "Twilio API wrapper"
  s.email = ["github@webficient.com"]
  s.homepage = ""
  s.rubyforge_project = "twilio"
  s.rubygems_version = "2.4.3"
  s.summary = "Twilio API Client"

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_runtime_dependency(%q<httparty>, [">= 0.8"])
      s.add_development_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_development_dependency(%q<rspec>, ["~> 2.12"])
      s.add_development_dependency(%q<webmock>, ["~> 1.6.2"])
    else
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<httparty>, [">= 0.8"])
      s.add_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_dependency(%q<rspec>, ["~> 2.12"])
      s.add_dependency(%q<webmock>, ["~> 1.6.2"])
    end
  else
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<httparty>, [">= 0.8"])
    s.add_dependency(%q<rake>, ["~> 0.8.7"])
    s.add_dependency(%q<rspec>, ["~> 2.12"])
    s.add_dependency(%q<webmock>, ["~> 1.6.2"])
  end
end

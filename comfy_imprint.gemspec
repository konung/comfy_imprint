$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "comfy_imprint/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "comfy_imprint"
  s.version     = ComfyImprint::VERSION
  s.authors     = ["Nick Gorbikoff"]
  s.email       = ["nick@gorbikoff.com"]
  s.homepage    = 'https://github.com/konung/comfy_imprint'
  s.summary     = 'Contact Us engine / gem / page for Comfortable Mexican Sofa CMS.'
  s.description = 'Distributed as a gem, relies on SimpleForm & HAML, while this is an engine,
                  it is inteded for use with Comfortable Mexican Sofa,
                  and it may work with other Rails apps, but is not tested against them.
                  Why not comfy_contact or something similar? Cause keeping track of ComfyContact::Contact.contact - hurts my head.'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.licenses = ['MIT']
  s.add_dependency 'rails', '~> 3.2.13'
  s.add_dependency 'haml', '~> 4.0.3'
  s.add_dependency 'simple_form', '~> 2.1.0'
  s.add_dependency 'kaminari', '~> 0.14.1'

  # s.add_dependency "jquery-rails"

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'pry-debugger'
end
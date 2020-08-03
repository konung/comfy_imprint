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

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Gemfile","LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
  s.licenses = ['MIT']
  s.require_paths = ["lib"]
  s.add_dependency 'rails', '~> 4.0'
  s.add_dependency 'haml', '>= 4', '< 6'
  s.add_dependency 'simple_form', '~> 3.0'
  s.add_dependency 'kaminari', '>= 0.15', '< 2.0'
  s.add_dependency 'protected_attributes'

  # s.add_dependency "jquery-rails"

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'pry-debugger'
end
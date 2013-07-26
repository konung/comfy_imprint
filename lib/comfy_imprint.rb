require 'comfy_imprint/engine'
require 'haml'
require 'simple_form'

module ComfyImprint
  # This sets up an instnace of configuaration to make it availbe in config/initializers/comfy_imprint.rb
  mattr_accessor :sections_to_display
  @@sections_to_display   = []

  mattr_accessor :attributes_to_display
  @@attributes_to_display = []

  mattr_accessor :attributes_to_require
  @@attributes_to_require = []

  mattr_accessor :contacts_per_page
  @@contacts_per_page = 1

  mattr_accessor :mail_from
  @@mail_from = ''

  mattr_accessor :mail_to
  @@mail_to = ''

  mattr_accessor :mail_subject
  @@mail_subject = ''

  mattr_accessor :social_badges
  @@social_badges = {}

  mattr_accessor :number_800
  @@number_800 = ''

  def self.setup
    yield self
  end
end
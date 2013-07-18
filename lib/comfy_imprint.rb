require 'comfy_imprint/engine'
require 'haml'

module ComfyImprint
  # This sets up an instnace of configuaration to make it availbe in config/initializers/comfy_imprint.rb
  def self.configuration
    @configuration ||= Configuration.new
  end
  def self.configure
    config = configuration
    yield(config)
  end
end
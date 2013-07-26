require 'haml'
require 'simple_form'

[ 'comfy_imprint/engine',
  'comfy_imprint/configuration'
].each do |path|
  require File.expand_path(path, File.dirname(__FILE__))
end

module ComfyImprint
  # This sets up an instnace of configuaration to make it availbe in config/initializers/comfy_imprint.rb
  class << self
    def configure
      yield configuration
    end

    def configuration
      @configuration ||= Configuration.new
    end
    alias :config :configuration
  end
end
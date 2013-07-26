module ComfyImprint
  class Engine < ::Rails::Engine
    isolate_namespace ComfyImprint
    config.generators do |g|
      g.template_engine :haml
    end
    initializer 'comfy_imprint.configuration' do |app|
    end
  end
end
module ComfyImprint
  class Engine < ::Rails::Engine
    isolate_namespace ComfyImprint
    config.generators do |g|
      g.template_engine :haml
    end
  end
end
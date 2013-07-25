module ComfyImprint
  class Engine < ::Rails::Engine
    isolate_namespace ComfyImprint
    config.generators do |g|
      g.template_engine :haml
    end
  end

  class Configuration
    attr_accessor :attributes_to_display,
                  :attributes_to_require,
                  :contacts_per_page,
                  :mail_from,
                  :mail_to,
                  :mail_subject,
                  :social_badges,
                  :phone

    def initialize #:nodoc:
      @attributes_to_display = []
      @attributes_to_require = []
      @contacts_per_page     = 1
      @mail_from             = ''
      @mail_to               = ''
      @mail_subject          = ''
      @social_badges         = {}
      @phone                 = ''
    end
  end
end
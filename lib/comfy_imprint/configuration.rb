module ComfyImprint
  class Configuration
    attr_accessor :sections_to_display
    attr_accessor :attributes_to_display
    attr_accessor :attributes_to_require
    attr_accessor :contacts_per_page
    attr_accessor :mail_from
    attr_accessor :mail_to
    attr_accessor :mail_subject
    attr_accessor :social_badges
    attr_accessor :number_800

    def initialize
      @sections_to_display   = []
      @attributes_to_display = []
      @attributes_to_require = []
      @contacts_per_page     = 1
      @mail_from             = ''
      @mail_to               = ''
      @mail_subject          = ''
      @social_badges         = {}
      @number_800            = ''
    end
  end
end
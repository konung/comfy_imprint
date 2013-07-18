ComfyImprint.configure do |config|

    # Remove attributes you don't want displayed. If you add new attributes, specify them here as well.
    # Order is important, young grasshopper! This is the order they will be rendered in in the view.
    # Keep in mind that :is_subscribed is a general purpose boolean. It's up to you what meaning you attach to it.
    # You can use it to indicate if use aggreed to be contacted or to have their email sold to NSA or whatever.
    # Unless you really need to add more checkboxes - I suggest you don't as it make more cumbersome for people
    # to contact you!
    config.attributes_to_display = [:name, :email, :phone, :url, :company, :is_subscribed, :message]

    # These attributes will be required to be filled in before form submission.
    # This is used in models/comfy_imprint/contact.rb to set 'presence: true' or 'allow_blank: true' in validations.
    config.attributes_to_require  = [:email, :message] # :name, :phone, :url, :company, :is_subscribed

    # Email you will be sending submission from. Most likely the same as what you put in email.rb initializer
    config.mail_from = 'system@death-star.space'
    # Email you want to recieve emails to. Sometimes it's the same as mail_from, but doesn't have to be.
    config.mail_to   = 'r2.d2@galactic-republic.space'
    # Leave it alone or change to what makes sence to you so it's easy to filter in your email
    config.mail_subject = "Contact us form submission from #{Rails.application.class.parent_name}"

    # set the cms admin path if you have changed it for CMS
    #   config.admin_route_prefix = 'cms-admin'

    # Controller that should be used for admin area
    #   config.admin_controller = 'ApplicationController'

    # Form builder
    #   config.form_builder = 'ComfyBlog::FormBuilder'

    # Set the public path if you have changed it
    #   config.public_route_prefix = 'blog'

    # CMS Layout used for public posts/comments, if defined it takes precedence over public_layout
    #   config.public_cms_layout = 'blog'

    # Layout used for public posts/comments
    #   config.public_layout = 'application'

    # Number of contacts per page in the admin interface. Default is 10
      config.contacts_per_page = 25
end
ComfyImprint.configure do |config|

    # There 2 ways to customize your contact-us page. One is to override views & partials
    # in app/views/comfy_imprint . Refer to source code or github page for which views to verride
    # Another option, if you just want to hide some sections on the contact-us page  you can do it in
    # this config option. A good example is - you don't want your 800 number on the contact page
    # if you are going to display it the header already. Right?
    config.sections_to_display = [:form, :social_badges, :number_800, :location_list]

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

    # Some sites like to show their 1 800 number as a batch of honor everywhere, so for those folks
    # just configure it here, and then call it  like so ComfyImprint.configuration.phone . Or just leave it blank.
    # Technically you don't need ComfyImprint for this but you might as well so that you don't polute your template code with
    # links that can change. Much easier to control this data from here.
    config.number_800 = 'Call us at 1 (800) 555-1'

    # Config social contact methods:
    # You can add your own, just add a link to profile / page & link to log. Can be relative - ie in your assets.
    # I don't think I can distribute their logos as assets, legally speaking.
    # Comment out or delete the ones you don't want to use.
    # To call them in your HAML or ERB template just do this ComfyImprint.configuration.social_badges[:github][:profile] #=> Will return link to your github profile
    config.social_badges = {
        stackoverflow:  {profile: 'http://stackoverflow.com/users/CHANGE/ME',
                            logo: ''}, # http://stackexchange.com/about/logos
        linked_in:      {profile: 'http://www.linkedin.com/in/CHANGEME',
                            logo: ''}, # http://developer.linkedin.com/documents/branding-guidelines#general-use
        github:         {profile: 'https://github.com/CHANGEME',
                            logo: ''}, # https://github.com/logos
        facebook:       {profile: 'https://www.facebook.com/CHANGEME',
                            logo: ''}, # https://www.facebookbrand.com/
        twitter:        {profile: 'https://twitter.com/CHANGEME',
                            logo: ''}, # https://twitter.com/logo
        google_plus:    {profile: 'https://plus.google.com/CHANGEME',
                            logo: ''}, # https://developers.google.com/+/branding-guidelines
        tent_is:        {profile: 'https://CHANGEME.tent.is',
                            logo: ''} # 'https://tent.io
    }

    # Number of contacts per page in the admin interface. Default is 10
    config.contacts_per_page = 25
end
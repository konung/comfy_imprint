#ComfyImprint
This is what is commonly known as a "Contact Us" page, done as a mountable Rails 3 engine. It's designed to be used in conjunction with Comfortable Mexican Sofa Content Management System ( CMS CMS :-) ) I highly suggest to check out CMS as it runs circles around all other Rails CMS systems out there.

##Demo
I don't like heroku, so there is no obligatory heroku demo, thou I might put up one later at some other provider. However you can see this gem in action on my personal blog at: http://www.gorbikoff.com/contact-us

##Features / Bugs

- Uses your DB as a storage (creates comfy_imprint_contacts table) for all contact attempts on your website. Really convenient if you want to find that one person who emailed you from your website about buying it for $1000000 and you accidentally deleted that email. Also can be used to send notifications to your users. (There is an opt-in / opt-out Boolean field to let users sign up for your SPAM.) Major plus of this approach is that email is not 100% reliable: it can get lost, servers go down, mailboxes get filled, and SPAM filters go crazy. This takes care of it by saving at least something in your DB.
- Several default fields that should be sufficient in 90% of use cases. Remember this should be an **EASY** contact-us form, not a credit application.
- Built in validations / error checking for all fields ( phone, email, name, body, url, company name, is_subscribed). Has default error messages.
- Default Placeholders (May the force be with you!).
- Easily customizable to work with your CSS framework. Used in production on sites with both Bootstrap and Zurb Foundation.
- I18n ready. Right now has English & Russian locales. More  translations are welcome.
- Fields are configurable to be displayed / not displayed and required / not required.
- Uses your Rails apps mail configuration. But you can configure who should receive notifications from contact form.
- Right now it's not coupled too tightly with CMS, so you might be able to use it outside of it as well. At least I don't see any reason why it wouldn't work.
- Uses HAML & SimpleForm, but it can be easily overridden in your views if you want to.
- I use it with Rails 3 and CMS 1.8 , however it should be usable with Rails 4 and CMS 1.9 . I will shortly start a new project that should confirm this.
- Uses new hash syntax, so it's Ruby > 1.9 only.
- Modify order in which fields are rendered. No need for overriding the view.
- Uses minimal styling inside views, so entirely possible to style your contact form without touching gem at all with just a few rules in your application.css . If you use simple_form elsewhere it will just use your simple_form styling you already setup in your app.
- Often  Contact Us page has  address / phone information & google / yahoo / bing map. A proper Imprint / Impressum / Masthead page like in German-speaking countries. This is implemented as Location model ( to hold multiple branches if availalbe). You can just use a partial if you need to place it somewhere else on your site, or you can just override the view.
- Social Contacts & special contacts that you want to display through out your website can be configures in initializer ( think links to Facebook and 1-800 number)
- Contact categories are not implemented and are not likely to be implemented. (A drop down option to contact different departments.) It's an antifeature! Based on experience, customers often don't know which department they need. It creates an extra step for them to complete. Emails get routed to the wrong person / department and entropy is increased. It's much better to either route to a responsble person who will redirect email based on request OR send it to a group email like info@example.com where a group of people can see it. Also in one case all emails were routed to support@example.com which was pickup email for Redmine, which automatically create a support ticket.

## Upcoming Features
#### Pull Requests are welcome!

See current lest at : https://github.com/konung/comfy_imprint/issues?labels=enhancement&page=1&state=open

- Tests, Tests, Tests!
- Admin interface tie-in. Right now you need to use either a GUI tool for your DB or do some kind of export on ComfyImprint::Contact.all from console or rake task if you want to look at your contact attempts outside of your email.
- Integration with delayed_job for sending emails. Right now I do this manually by overriding controller.
- Adding some kind of Captcha mechanism.

##Usage
```ruby
  # Gemfile
  gem 'comfy_imprint'
  bundle install

  # Migrations
  rake comfy_imprint:install:migrations
  rake db:migrate

  # Routes
  mount ComfyImprint::Engine, at: "/contact-us"

  # Config
  # copy & edit initializer
  rake comfy_imprint:install:copy_initializer

```

## Name
Why didn't I name this ComfyContact or something similar? Because dealing with ComfyContact::Contact.contact is confusing and because I already have unrelated resource named Contact. While this gem is properly namespaced, it would be confusing for anyone else not familiar with your app. I'm guessing I'm not the only genius to have unrelated model called Contact in my app.

## Acknowledgement and thank yous
This gem was made possible due to generosity of folks at http://www.birica.com


This project rocks and uses MIT-LICENSE.

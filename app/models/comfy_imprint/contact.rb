module ComfyImprint
  class Contact < ActiveRecord::Base
    attr_accessible :name, :email, :phone, :url, :company, :is_subscribed, :message

    # You need to explictely set allow_blank: true on these validations, otherwise you'll run into a problem of blank values being invalid or too_short
    # See comfy_imprint/app/validators for custom validators used here


    validates :name,
              length: {minimum: 2,  maximum: 100},
              presence: {if: -> {ComfyImprint.configuration.attributes_to_require.include?(:name)}},
              allow_blank: {unless: -> {ComfyImprint.configuration.attributes_to_require.include?(:name)}},
              name: true
    validates :email,
              length: {minimum: 5,  maximum: 100},
              presence: {if: -> {ComfyImprint.configuration.attributes_to_require.include?(:email)}},
              allow_blank: {unless: -> {ComfyImprint.configuration.attributes_to_require.include?(:email)}},
              email: true
    validates :phone,
              length: {minimum: 10, maximum: 20},
              presence: {if: -> {ComfyImprint.configuration.attributes_to_require.include?(:phone)}},
              allow_blank: {unless: -> {ComfyImprint.configuration.attributes_to_require.include?(:phone)}},
              phone: true
    validates :company,
              length: {minimum: 2,  maximum: 200},
              presence: {if: -> {ComfyImprint.configuration.attributes_to_require.include?(:company)}},
              allow_blank: {unless: -> {ComfyImprint.configuration.attributes_to_require.include?(:company)}},
              company_name: true
    validates :url,
              length: {minimum: 5,  maximum: 200},
              presence: {if: -> {ComfyImprint.configuration.attributes_to_require.include?(:url)}},
              allow_blank: {unless: -> {ComfyImprint.configuration.attributes_to_require.include?(:url)}},
              url: true
    validates :is_subscribed,
              inclusion: {in: [true, false]},
              presence: {if: -> {ComfyImprint.configuration.attributes_to_require.include?(:is_subscribed)}},
              allow_blank: {unless: -> {ComfyImprint.configuration.attributes_to_require.include?(:is_subscribed)}}
    validates :message,
              length: {minimum: 5,  maximum: 1000},
              presence: {if: -> {ComfyImprint.configuration.attributes_to_require.include?(:message)}},
              allow_blank: {unless: -> {ComfyImprint.configuration.attributes_to_require.include?(:message)}},
              clean_text: true
  end
end
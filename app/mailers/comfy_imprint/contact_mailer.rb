module ComfyImprint
  class ContactMailer < ActionMailer::Base
    default from: ComfyImprint.configuration.mail_from,
            to: ComfyImprint.configuration.mail_to,
            subject: ComfyImprint.configuration.mail_subject
    def contact_email(contact)
      @contact = contact
      mail
    end
  end
end

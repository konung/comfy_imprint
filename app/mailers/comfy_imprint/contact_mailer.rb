module ComfyImprint
  class ContactMailer < ActionMailer::Base
    default from: ComfyImprint.mail_from,
            to: ComfyImprint.mail_to,
            subject: ComfyImprint.mail_subject
    def contact_email(contact)
      @contact = contact
      mail
    end
  end
end

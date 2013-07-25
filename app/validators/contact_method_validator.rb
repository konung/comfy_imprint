class ContactMethodValidator < ActiveModel::Validator
  def validate(record)
    unless (!record.addresses.empty? or !record.phones.empty? or !record.emails.empty? or !record.urls.empty?)
      record.errors[:base] << "This contact doesn't have any methods of contacting them: like email or phone"
    end  
  end
end
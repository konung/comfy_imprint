class PhoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^[0-9x\(\)\ \.\-]*$/i
      record.errors.add attribute, (options[:message] || :invalid_phone)
    end
  end
end
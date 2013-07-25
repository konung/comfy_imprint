class NameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^[a-zA-Z0-9_\'\ \-]*$/i
      record.errors.add attribute, (options[:message] || :invalid_name)
    end
  end
end
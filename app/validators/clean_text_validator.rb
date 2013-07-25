class CleanTextValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^[a-zA-Z0-9\\(\)\-.\!\?\'\,\s]*$/i
      record.errors.add attribute, (options[:message] || :invalid_clean_text)
    end
  end
end
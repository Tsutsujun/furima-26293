class DateCheckValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    year  = value[1]
    month = value[2]
    day   = value[3]
    if year.blank? || month.blank? || day.blank?
      record.errors[attribute] << "Birth-date can't be blank."
    elsif !(Date.valid_date?(year.to_i, month.to_i, day.to_i))
      record.errors[attribute] << "Its birth-date doesn't exist."
    end
  end

end

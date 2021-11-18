class DateCheckValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    return if value.blank?

    year  = value[1]
    month = value[2]
    day   = value[3]
    if year.blank? || month.blank? || day.blank?
      record.errors.add(attribute, :blank, message: "can't be blank")
    elsif !(Date.valid_date?(year.to_i, month.to_i, day.to_i))
      record.errors.add(attribute, :incorrect, message: "can't be incorrect")
    end
  end

end

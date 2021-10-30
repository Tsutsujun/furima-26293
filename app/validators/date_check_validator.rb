class DateCheckValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    year, month, day = value.split('-')
    if year.blank? || month.blank? || day.blank?
      record.errors[attribute] << "Birth-date can't be blank."
    elsif !(Date.valid_date?(year.to_i, month.to_i, day.to_i))
      record.errors[attribute] << "Its birth-date doesn't exist."
    end
  end

end

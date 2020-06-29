class RentDatesValidator < ActiveModel::Validator
  def validate(record)
    if record.income_type == "Loyer"
  		if record.start_date > record.end_date
  			record.errors.add(:end_date, "cannot be smaller than the start date")
  		elsif record.start_date == record.end_date
  			record.errors.add(:end_date, "cannot be equal to the end date")
  		end
  	end
  end
end
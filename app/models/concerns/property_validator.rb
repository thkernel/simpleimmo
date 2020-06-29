class LeasePropertyValidator < ActiveModel::Validator
  
  def validate(record)

  	lease = Lease.find_by(property_id: record.property_id, status: "status")

    if lease.present?
  		record.errors.add(:property_id, "is not available")
  	end
  end

end

class PropertyValidator < ActiveModel::Validator
  
  def validate(record)

  	lease = Lease.find_by(property_id: record.property_id, status: "status")

    if lease.present?
  		record.errors.add(:property_id, "is not available")
  	end
  end
  
end
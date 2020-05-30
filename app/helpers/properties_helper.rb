module PropertiesHelper
	def property_type(id)
		PropertyType.find(id)
	end

	def city(id)
		City.find(id)
	end

	def building(id)
		Building.find(id)
	end

	def landlord(id)
		Landlord.find(id)
	end
end

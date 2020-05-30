module LandlordTypesHelper
	def landlord_type(id)
		LandlordType.find(id)
	end
end

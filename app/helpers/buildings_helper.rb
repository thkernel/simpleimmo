module BuildingsHelper
	def landlord(id)
		Landlord.find(id)
	end
end

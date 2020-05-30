module LeasesHelper

	def tenant(id)
		Tenant.find(id)
	end
end

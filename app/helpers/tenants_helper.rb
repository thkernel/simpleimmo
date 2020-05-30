module TenantsHelper

	def tenant_type(id)
		TenantType.find(id)
	end
end

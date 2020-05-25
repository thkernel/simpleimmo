module MaterialsHelper
	def material_type(id)
		MaterialType.find(id)
	end
end

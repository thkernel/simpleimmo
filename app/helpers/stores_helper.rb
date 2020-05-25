module StoresHelper
	def store_type(id)
		StoreType.find(id)
	end
end

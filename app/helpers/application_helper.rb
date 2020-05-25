module ApplicationHelper

    def resource_name
	    :user
	end

	def resource
	    @resource ||= User.new
	end
	
	def resource_class
		User
	end
	
	def devise_mapping
	    @devise_mapping ||= Devise.mappings[:user]
	end
	
	
	def notifications?
		true
	end

	def messages?
		true
	end


	

	def current_company
	
		company = Company.take
		if company.present?
			company
		end
		
	end

	def get_movement_type_name(id)
		movement_type = MovementType.find(id)
		movement_type.name
	end

	def get_product_name(id)
		product = Product.find(id)
		product.name
	end
	

	def is_account_locked?(user)
		if user.status == 'enable'
			false
		else
			true
		end
	end

	def is_app_name_exist?(user)
		app_name = get_app_name(user)
		if app_name.present?
			true
		else
			false
		end
	end

	

	def completed?(status)
		if status == 'yes'
			true
		else
			false
		end
	end
	def current_company
		company = Company.first
	end
end

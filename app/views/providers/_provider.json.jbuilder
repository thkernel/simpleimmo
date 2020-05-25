json.extract! provider, :id, :name, :address, :city, :country, :phone, :email, :status, :user_id, :created_at, :updated_at
json.url provider_url(provider, format: :json)

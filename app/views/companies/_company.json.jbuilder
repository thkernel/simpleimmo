json.extract! company, :id, :name, :address, :city, :country, :phone, :email, :website, :slug, :user_id, :created_at, :updated_at
json.url company_url(company, format: :json)

json.extract! tax, :id, :name, :rate, :description, :status, :user_id, :created_at, :updated_at
json.url tax_url(tax, format: :json)

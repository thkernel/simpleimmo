json.extract! store, :id, :name, :address, :city, :status, :user_id, :created_at, :updated_at
json.url store_url(store, format: :json)

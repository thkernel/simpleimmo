json.extract! deposit, :id, :name, :address, :description, :status, :user_id, :created_at, :updated_at
json.url deposit_url(deposit, format: :json)

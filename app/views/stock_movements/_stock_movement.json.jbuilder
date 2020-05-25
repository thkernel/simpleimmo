json.extract! stock_movement, :id, :reference, :movement_type_id, :status, :user_id, :created_at, :updated_at
json.url stock_movement_url(stock_movement, format: :json)

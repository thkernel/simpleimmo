json.extract! stock_movement_detail, :id, :product_id, :unit_price, :quantity, :amount, :status, :stock_movement_id, :user_id, :created_at, :updated_at
json.url stock_movement_detail_url(stock_movement_detail, format: :json)

json.extract! purchase_order_detail, :id, :product_id, :unit_price, :quantity, :amount, :status, :purchase_order_id, :user_id, :created_at, :updated_at
json.url purchase_order_detail_url(purchase_order_detail, format: :json)

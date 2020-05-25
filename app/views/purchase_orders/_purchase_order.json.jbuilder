json.extract! purchase_order, :id, :reference, :provider_id, :status, :user_id, :created_at, :updated_at
json.url purchase_order_url(purchase_order, format: :json)

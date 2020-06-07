json.extract! payment_reason, :id, :name, :description, :status, :user_id, :created_at, :updated_at
json.url payment_reason_url(payment_reason, format: :json)

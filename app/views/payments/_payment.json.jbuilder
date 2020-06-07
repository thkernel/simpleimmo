json.extract! payment, :id, :property_id, :payment_reason_id, :payer, :start_date, :end_date, :payment_method_id, :amount, :received_amount, :tax_id, :total_amount, :status, :user_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)

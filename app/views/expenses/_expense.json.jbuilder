json.extract! expense, :id, :property_id, :type, :payer, :start_date, :end_date, :payment_method_id, :amount, :received_amount, :tax_id, :total_amount, :status, :user_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)

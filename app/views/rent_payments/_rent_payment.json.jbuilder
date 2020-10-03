json.extract! rent_payment, :id, :uid, :income, :lease_id, :month, :year, :status, :created_at, :updated_at
json.url rent_payment_url(rent_payment, format: :json)

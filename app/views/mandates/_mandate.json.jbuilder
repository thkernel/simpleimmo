json.extract! mandate, :id, :landlord_id, :building_id, :property_id, :usage_type, :start_date, :end_date, :duration, :id_type, :id_number, :periodicity, :property_value, :commission_rate, :commission_amount, :vat_rate, :net_amount, :status, :notes, :user_id, :created_at, :updated_at
json.url mandate_url(mandate, format: :json)

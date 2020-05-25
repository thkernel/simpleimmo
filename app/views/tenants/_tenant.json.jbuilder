json.extract! tenant, :id, :tenant_type_id, :civility, :last_name, :first_name, :birth_date, :birth_place, :id_type, :id_number, :id_expiration, :profession, :nationality, :company_name, :address, :phone, :city, :country, :email, :about, :user_id, :status, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)

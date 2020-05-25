json.extract! tenant_type, :id, :name, :description, :status, :user_id, :created_at, :updated_at
json.url tenant_type_url(tenant_type, format: :json)

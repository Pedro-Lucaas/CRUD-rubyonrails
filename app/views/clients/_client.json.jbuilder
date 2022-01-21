json.extract! client, :id, :name, :rg, :phone, :address_id, :created_at, :updated_at
json.url client_url(client, format: :json)

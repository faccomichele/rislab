json.extract! device, :id, :name, :ip, :mac, :description, :device_type_id, :created_at, :updated_at
json.url device_url(device, format: :json)

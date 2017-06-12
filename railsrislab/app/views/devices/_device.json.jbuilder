json.extract! device, :id, :name, :ip, :mac, :description, :devtype, :created_at, :updated_at
json.url device_url(device, format: :json)

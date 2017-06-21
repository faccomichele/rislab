json.extract! user, :id, :name, :administrator, :created_at, :updated_at
json.url user_url(user, format: :json)

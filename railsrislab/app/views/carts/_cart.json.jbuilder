json.extract! cart, :id, :user_id, :start_time, :end_time, :created_at, :updated_at
json.url cart_url(cart, format: :json)

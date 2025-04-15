json.extract! user, :id, :name, :gender, :created_at, :updated_at
json.url user_url(user, format: :json)

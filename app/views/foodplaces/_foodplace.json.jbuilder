json.extract! foodplace, :id, :name, :email, :address, :score, :phone, :created_at, :updated_at
json.url foodplace_url(foodplace, format: :json)

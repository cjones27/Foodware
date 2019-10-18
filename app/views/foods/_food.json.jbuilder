json.extract! food, :id, :title, :body, :price, :quantity, :score, :user_id, :foodplace_id, :created_at, :updated_at
json.url food_url(food, format: :json)

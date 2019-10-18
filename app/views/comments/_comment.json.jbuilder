json.extract! comment, :id, :title, :body, :score, :user_id, :foodplace_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)

json.array!(@messages) do |message|
  json.extract! message, :id, :content, :user_id, :public_key, :date
  json.url message_url(message, format: :json)
end

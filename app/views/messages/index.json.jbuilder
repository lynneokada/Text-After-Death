json.array!(@messages) do |message|
  json.extract! message, :id, :content, :sender_id, :public_key, :date
  json.url message_url(message, format: :json)
end

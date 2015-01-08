json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :confirmation_password
  json.url user_url(user, format: :json)
end

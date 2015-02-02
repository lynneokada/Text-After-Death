require 'rubygems'
require 'twilio-ruby'

account_sid = "PN50be223d97e512048ea7930b76e11263"
auth_token = "9b2ff5b3611e55d6a17bec37f29e0fbc"
client = Twilio::REST::Client.new account_sid, auth_token

from = "+14088728657" # Your Twilio number

friends = {
  "+14083142023" => "Lynne Okada"
}
friends.each do |key, value|
  client.account.messages.create(
  :from => from,
  :to => key,
  :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
  )
  puts "Sent message to #{value}"
end

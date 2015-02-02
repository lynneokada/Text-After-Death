class Twilio_Controller < ApplicationController
  def index
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = "AC68e326034c32dc4e6c23538ebd7f15a8"
    twilio_token = "9b2ff5b3611e55d6a17bec37f29e0fbc"
    twilio_phone_number = "4088728657"

    client = Twilio::REST::Client.new twilio_sid, twilio_token

    client.account.sms.messages.create(
    :from => "+1#{twilio_phone_number}",
    :to => number_to_send_to,
    :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end
end

class ReceiversController < ApplicationController

  def index
    @receivers = current_user.receivers
  end

  def new
    @receiver = Receiver.new
    @receivers = current_user.receivers
  end

  def create
    @receiver = current_user.receivers.build(receiver_params)
    if @receiver.save
      flash[:success] = "Successfully registered..."
      redirect_to :controller => 'receivers', :action => 'new'

      # Instantiate a Twilio client
      client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])

      # Create and send an SMS message
      client.account.sms.messages.create(
      from: TWILIO_CONFIG['from'],
      to: @receiver.phonenumber,
      body: "You have been signed up for the After Text Service."
      )
    else
      flash[:danger] = "nope"
      render 'new'
    end
  end

  def show
    @receiver = Receiver.find(params[:id])
  end

  private
  def receiver_params
    params.require(:receiver).permit(:name, :phonenumber)
  end

end

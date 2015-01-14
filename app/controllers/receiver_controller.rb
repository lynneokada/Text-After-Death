class ReceiverController < ApplicationController

  def index
    @recievers = Receiver.all
  end

  def new
    @receiver = Receiver.new
  end

  def create
    @receiver = Receiver.new(receiver_params)
    if @receiver.save
      flash[:success] = "Successfully registered"
      redirect_to root_url
    else
      render 'new'
  end
end

private

  def receiver_params
    params.require(:receiver).permit(:phonenumber, :name, :private_key, :sender_name)
  end
end

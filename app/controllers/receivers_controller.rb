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
      redirect_to current_user
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

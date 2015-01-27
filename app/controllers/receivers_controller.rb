class ReceiversController < ApplicationController

  def index
    @receivers = current_user.receivers
  end

  def new
    @receiver = Receiver.new
  end

  def create
    @receiver = Receiver.new(receiver_params)
    if @receiver.save
      flash[:success] = "Successfully registered..."
      redirect_to :controller => 'receiver', :action => 'new'
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

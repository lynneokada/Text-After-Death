class ReceiversController < ApplicationController

  def index
    @receivers = Receiver.all
  end

  def new
    @receiver = Receiver.new
  end

  def create
    @receiver = Receiver.new(receiver_params)
    if @receiver.save
      flash[:success] = "Successfully registered...the waiting game begins"
      redirect_to home_path
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

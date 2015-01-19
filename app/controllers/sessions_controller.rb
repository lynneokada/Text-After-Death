class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        # log user in and redirect to user homepage
        log_in user
        redirect_to user
      else
        # create an error message
        flash[:danger] = 'Invalid email/password combination'
        render 'new'
      end
  end

  def destroy
    log_out if logged_in?
    redirect_to home_url
  end
end

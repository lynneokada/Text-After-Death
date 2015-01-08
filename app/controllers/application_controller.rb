class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
=======

  def home
    render text: "hello"
  end
>>>>>>> 12c28f6ef6aee23b79cacb0f410d77607841d472
end

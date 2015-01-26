module ReceiversHelper

  def current_user_receivers
    current_user.receivers if logged_in?
  end

end

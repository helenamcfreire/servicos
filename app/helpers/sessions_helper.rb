module SessionsHelper

  def current_user
    @current_user ||= User.find(cookies[:user_id]) if cookies[:user_id]
  end

  def signed_in?
    !current_user.nil?
  end


end
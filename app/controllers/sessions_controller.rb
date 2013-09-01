# encoding: UTF-8
class SessionsController < HomeController

  def create
    auth = request.env['omniauth.auth']
    user = User.find_or_create_with_omniauth(auth)
    cookies[:user_id] = user.id
    redirect_to root_url
  end

  def failure
    redirect_to root_url
  end

end
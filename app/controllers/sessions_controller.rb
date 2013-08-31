# encoding: UTF-8
class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    user = User.find_or_create_with_omniauth(auth)
    cookies[:user_id] = user.id
    cookies[:user_name] = user.name
    redirect_to root_url
  end

  def failure
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
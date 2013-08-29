require 'open-uri'

class ApplicationController < ActionController::Base
  protect_from_forgery

  def public_ip
    open('http://whatismyip.akamai.com').read
  end

end

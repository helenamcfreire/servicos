require 'open-uri'

class ApplicationController < ActionController::Base
  protect_from_forgery

  def index

    geolocation = open('http://freegeoip.net/json/'+public_ip).read
    @cidade = JSON.parse(geolocation)['city']
    session[:cidade] = @cidade

  end

  def param_to_like(param)
    '%' + param.downcase + '%'
  end

  def public_ip
    open('http://whatismyip.akamai.com').read
  end

  def mudar_cidade

    session[:cidade] = params[:cidade]
    render 'servico/index'

  end

end

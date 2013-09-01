class HomeController < ApplicationController


  def index
    @estados = Estado.all
  end

  def param_to_like(param)
    '%' + param.downcase + '%'
  end

end
class EmpresaController < ApplicationController


  def new
    @empresa = Empresa.new
  end


  def create
    @empresa = Empresa.new(params[:empresa])
    @empresa.save

    render :new
  end


end

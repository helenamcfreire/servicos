require 'will_paginate/array'
require 'open-uri'

class ServicoController < ApplicationController


  def index

    geolocation = open('http://freegeoip.net/json/'+public_ip).read
    @cidade = JSON.parse(geolocation)['city']
    session[:cidade] = @cidade

  end

  def find

    nome_para_consulta = '%' + params[:nome_servico].downcase + '%'
    servicos = Servico.all(:conditions => ['lower(nome) LIKE ?' , nome_para_consulta], :select => :id)
    @empresa_servicos = EmpresaServico.where(:servico_id => servicos).paginate(:page => params[:page], :per_page => 10) if servicos != nil

    render :list

  end


end
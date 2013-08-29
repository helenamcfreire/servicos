require 'will_paginate/array'
require 'open-uri'

class ServicoController < ApplicationController

  def find

    like = param_to_like(params[:nome_servico])
    servicos = Servico.all(:conditions => ['lower(nome) LIKE ?' , like], :select => :id)
    @empresa_servicos = EmpresaServico.where(:servico_id => servicos).paginate(:page => params[:page], :per_page => 10) if servicos != nil

    render :list

  end

  def list

    like = param_to_like(params[:term])
    servicos = Servico.where('lower(nome) LIKE ?', like)
                      .map {|servico| Hash[ id: servico.id, label: servico.nome, name: servico.nome ]}

    render json: servicos

  end

end
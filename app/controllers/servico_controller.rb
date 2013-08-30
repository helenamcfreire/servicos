require 'will_paginate/array'
require 'open-uri'

class ServicoController < ApplicationController

  def find

    nome_like = param_to_like(params[:nome_servico])
    cidade_like = param_to_like(session['cidade'])
    servicos = Servico.all(:conditions => ['lower(nome) LIKE ?' , nome_like], :select => :id)
    @empresa_servicos = EmpresaServico.joins(:empresa => :cidade)
                                      .where(:servico_id => servicos)
                                      .where('lower(cidades.nome) LIKE ?' , cidade_like)
                                      .paginate(:page => params[:page], :per_page => 10) if servicos != nil

    render :list

  end

  def list

    like = param_to_like(params[:term])
    servicos = Servico.where('lower(nome) LIKE ?', like)
                      .map {|servico| Hash[ id: servico.id, label: servico.nome, name: servico.nome ]}

    render json: servicos

  end

end
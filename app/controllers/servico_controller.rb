require 'will_paginate/array'
require 'open-uri'

class ServicoController < HomeController

  def find

    nome_like = param_to_like(params[:nome_servico])
    servicos = Servico.all(:conditions => ['lower(nome) LIKE ?' , nome_like], :select => :id)

    @empresa_servicos = EmpresaServico.joins(:empresa => :cidade)
                                      .where(:servico_id => servicos, :cidades => { :id => params[:cidade_id]})
                                      .paginate(:page => params[:page], :per_page => 10) if servicos != nil

    @estados = Estado.all

    render :list

  end

  def list

    like = param_to_like(params[:term])
    servicos = Servico.where('lower(nome) LIKE ?', like)
                      .map {|servico| Hash[ id: servico.id, label: servico.nome, name: servico.nome ]}

    render json: servicos

  end

end
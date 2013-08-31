require 'will_paginate/array'

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

    like = param_to_like(params[:query])
    servicos = Servico.where('lower(nome) LIKE ?', like)
                      .collect(&:nome)

    json = {:query => params[:query], :suggestions => servicos}

    render :json => json

  end

end
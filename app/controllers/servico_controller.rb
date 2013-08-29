require 'will_paginate/array'

class ServicoController < ApplicationController


  def index
  end

  def find

    @nome_search = params[:nome_servico]
    nome_to_query = '%' + @nome_search.downcase + '%' if params[:nome_servico] != nil
    servicos = Servico.all(:conditions => ['lower(nome) LIKE ?' , nome_to_query], :select => :id)
    @empresa_servicos = EmpresaServico.where(:servico_id => servicos).paginate(:page => params[:page], :per_page => 10) if servicos != nil

    render :list

  end


end

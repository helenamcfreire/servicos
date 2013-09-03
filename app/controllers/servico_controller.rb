require 'will_paginate/array'

class ServicoController < HomeController

  def find

    nome_like = param_to_like(params[:nome_servico])
    servicos = Servico.all(:conditions => ['lower(nome) LIKE ?' , nome_like], :select => :id)

    @empresa_servicos = EmpresaServico.joins(:empresa => :cidade)
                                      .where(:servico_id => servicos, :cidades => { :id => params[:cidade_id]})
                                      .paginate(:page => params[:page], :per_page => 10) if servicos != nil


    @empresa_servicos = @empresa_servicos.order(:preco) if ordenar_por_preco

    @empresa_servicos = @empresa_servicos.joins('LEFT JOIN avaliacaos ON avaliacaos.empresa_servico_id = empresa_servicos.id')
                                         .group('empresa_servicos.id')
                                         .order('count(avaliacaos.id) DESC') if ordenar_por_avaliacao

    @estados = Estado.all

    render :list

  end

  def ordenar_por_preco
    params[:ordenar_por] == 'preco'
  end

  def ordenar_por_avaliacao
    params[:ordenar_por] == 'avaliacao'
  end

  def list

    like = param_to_like(params[:query])
    servicos = Servico.where('lower(nome) LIKE ?', like)
                      .collect(&:nome)

    json = {:query => params[:query], :suggestions => servicos}

    render :json => json

  end

end
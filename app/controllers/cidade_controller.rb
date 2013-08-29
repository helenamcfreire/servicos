class CidadeController < ApplicationController


  def list

    like = param_to_like(params[:term])
    cidades = Cidade.where('lower(nome) LIKE ?', like).order('nome')
    .map {|servico| Hash[ id: servico.id, label: servico.nome, name: servico.nome ]}

    render json: cidades

  end

end
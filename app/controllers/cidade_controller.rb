class CidadeController < HomeController


  def list_by_estado
      cidades = Cidade.find_all_by_estado_id(params[:estado_id])
                       .map {|cidade| Hash[ id: cidade.id, nome: cidade.nome ]}

      render json: cidades
  end

end
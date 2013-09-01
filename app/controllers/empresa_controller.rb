class EmpresaController < HomeController


  def new
    @empresa = Empresa.new
  end


  def create
    @empresa = Empresa.new(params[:empresa])
    @empresa.save

    render :new
  end

  def detail
      @empresa_servico = EmpresaServico.find(params[:id])
  end

  def rate

    @avaliacao = Avaliacao.new({ :titulo => params[:titulo],
                                 :comentario => params[:comentario],
                                 :rate => params[:rate],
                                 :user_id => cookies[:user_id],
                                 :empresa_servico_id => params[:empresa_servico_id] })
    @avaliacao.save

    render :nothing => true

  end


end

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


end

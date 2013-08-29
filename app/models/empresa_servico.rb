class EmpresaServico < ActiveRecord::Base

  belongs_to :empresa
  belongs_to :servico

  attr_accessible :preco

end

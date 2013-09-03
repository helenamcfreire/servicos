class EmpresaServico < ActiveRecord::Base

  belongs_to :empresa
  belongs_to :servico

  has_many :avaliacaos

  attr_accessible :preco

end
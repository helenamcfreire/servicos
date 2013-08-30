class Empresa < ActiveRecord::Base

  belongs_to :cidade

  attr_accessible :nome, :endereco

  has_many :servicos

end

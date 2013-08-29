class Empresa < ActiveRecord::Base

  attr_accessible :nome, :endereco

  has_many :servicos

end

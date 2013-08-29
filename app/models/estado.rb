class Estado < ActiveRecord::Base

  belongs_to :pais
  has_many :cidades

  attr_accessible :nome, :sigla

end

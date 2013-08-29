class Servico < ActiveRecord::Base

  attr_accessible :nome, :preco

  belongs_to :empresa


end

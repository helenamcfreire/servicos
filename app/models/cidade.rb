class Cidade < ActiveRecord::Base

  belongs_to :estado

  attr_accessible :nome

  has_many :empresas

end

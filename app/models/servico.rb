class Servico < ActiveRecord::Base

  attr_accessible :nome

  belongs_to :empresa


end

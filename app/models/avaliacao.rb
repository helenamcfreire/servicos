class Avaliacao < ActiveRecord::Base

  belongs_to :user
  belongs_to :empresa_servico

  attr_accessible :titulo, :comentario, :rate, :user_id, :empresa_servico_id

end
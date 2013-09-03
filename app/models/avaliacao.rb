class Avaliacao < ActiveRecord::Base

  belongs_to :user
  belongs_to :empresa_servico

  attr_accessible :titulo, :comentario, :rate, :user_id, :empresa_servico_id

  validates_presence_of :titulo, :comentario, :user_id, :empresa_servico_id
  validates_numericality_of :rate, :greater_than => 0, :less_than_or_equal_to => 5

end
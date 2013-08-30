class Empresa < ActiveRecord::Base

  belongs_to :cidade

  attr_accessible :nome, :endereco, :image, :image_file_name, :cidade_id
  has_attached_file :image

  has_many :servicos

end

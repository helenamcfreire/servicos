class Cidade < ActiveRecord::Base

  belongs_to :estado

  attr_accessible :nome

end

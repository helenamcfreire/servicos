class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|

      t.string :nome
      t.string :endereco

    end
  end
end

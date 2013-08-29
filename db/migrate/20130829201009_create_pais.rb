class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|

      t.string :nome
      t.string :sigla

    end
  end
end

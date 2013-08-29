class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|

      t.string :nome
      t.references :estado

    end
  end
end

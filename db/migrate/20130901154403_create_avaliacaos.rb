class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|


      t.references :user
      t.references :empresa_servico

      t.string :titulo
      t.text :comentario
      t.integer :rate


      t.timestamps
    end
  end
end

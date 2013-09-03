class CreateServicoPesquisados < ActiveRecord::Migration
  def change
    create_table :servico_pesquisados do |t|

      t.string :nome
      t.timestamps

    end
  end
end

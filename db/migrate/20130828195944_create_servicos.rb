class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|

      t.string :nome

    end
  end
end

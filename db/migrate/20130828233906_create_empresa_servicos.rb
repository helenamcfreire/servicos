class CreateEmpresaServicos < ActiveRecord::Migration
  def change
    create_table :empresa_servicos do |t|

      t.references :empresa
      t.references :servico

      t.string :preco

    end
  end
end

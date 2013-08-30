class AddImageFileNameToEmpresa < ActiveRecord::Migration

  def self.up
    add_column :empresas, :image_file_name,    :string
  end

  def self.down
    remove_column :empresas, :image_file_name
  end

end
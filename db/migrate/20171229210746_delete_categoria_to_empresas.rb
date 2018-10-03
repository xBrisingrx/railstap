class DeleteCategoriaToEmpresas < ActiveRecord::Migration[5.1]
  def change
  	remove_column :empresas, :categoria
  end
end

class CreateEmpresas < ActiveRecord::Migration[5.1]
  def change
    create_table :empresas do |t|
    	t.integer :cuit
    	t.string :nombre
    	t.boolean :activo
    	t.timestamps
    end
  end
end

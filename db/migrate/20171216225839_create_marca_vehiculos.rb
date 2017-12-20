class CreateMarcaVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :marca_vehiculos do |t|
    	t.string :marca
    	t.boolean :activo
    	t.timestamps
    end
  end
end

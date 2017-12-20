class CreateModeloVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :modelo_vehiculos do |t|
    	t.string :modelo
    	t.references :marca_vehiculo, foreign_key: true
    	t.boolean :activo
      t.timestamps
    end
  end
end

class CreateTipoVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_vehiculos do |t|
    	t.string :tipo
    	t.boolean :activo
      t.timestamps
    end
  end
end

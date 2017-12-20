class CreateVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :vehiculos do |t|
    	t.integer :interno
    	t.string :dominio
    	t.integer :anio

    	# t.references :marca_vehiculo, foreign_key: true
    	# t.references :modelo_vehiculo, foreign_key: true
    	# t.references :tipo_vehiculo, foreign_key: true
    	t.string :num_chasis
    	t.string :num_motor
    	t.integer :cant_asientos
    	t.references :empresa, foreign_key: true
    	t.text :observaciones
    	t.boolean :activo
    	t.timestamps
    end
  end
end

class AddRefVehiculos < ActiveRecord::Migration[5.1]
  def change
  	add_reference :vehiculos, :marca_vehiculo, foreign_key: true
  	add_reference :vehiculos, :modelo_vehiculo, foreign_key: true
  	add_reference :vehiculos, :tipo_vehiculo, foreign_key: true
  end
end

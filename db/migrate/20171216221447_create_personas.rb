class CreatePersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :personas do |t|
    	t.integer :num_legajo
    	t.string :apellido
    	t.string :nombre
    	t.integer :dni
    	t.date :fecha_vencimiento_dni
    	t.string :pdf_dni_path
    	t.integer :cuil
    	t.string :pdf_cuil_path
    	t.date :fecha_nacimiento
    	t.string :pdf_fecha_nacimiento_path
    	t.string :nacionalidad
    	t.string :domicilio
    	t.integer :telefono

    	# t.references :empresa, foreign_key: true
    	t.boolean :activo
        
    	t.timestamps
    end
  end
end

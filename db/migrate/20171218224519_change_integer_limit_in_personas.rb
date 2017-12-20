class ChangeIntegerLimitInPersonas < ActiveRecord::Migration[5.1]
  def change
  	# Aumento el limite de bit de los integer, por defecto es 4bit y no almacena numeros grandes
  	change_column :personas , :dni , :integer, limit: 8
  	change_column :personas , :cuil , :integer, limit: 8
  	change_column :personas , :telefono , :integer, limit: 8
  end
end

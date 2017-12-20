class ChangeIntegerLimitInEmpresas < ActiveRecord::Migration[5.1]
  def change
  	change_column :empresas , :cuit , :integer, limit: 8
  end
end

class AddEmpresaRefToPersonas < ActiveRecord::Migration[5.1]
  def change
    add_reference :personas, :empresa, foreign_key: true
  end
end

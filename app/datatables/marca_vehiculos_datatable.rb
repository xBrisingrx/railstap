# class MarcaVehiculosDatatable < AjaxDatatablesRails::Base

#   def view_columns
#     # Declare strings in this format: ModelName.column_name
#     # or in aliased_join_table.column_name format
#     @view_columns ||= {
#       id: { source: "Marca_vehiculos.id", cond: :eq },
#       marca: { source: "Marca_vehiculos.marca", cond: :like }
#     }
#   end

#   def data
#     records.map do |record|
#       {
#         id: record.id,
#         marca: record.marca
#       }
#     end
#   end

#   private

#   def get_raw_records
#     MarcaVehiculo.all
#   end

#   # ==== These methods represent the basic operations to perform on records
#   # and feel free to override them

#   # def filter_records(records)
#   # end

#   # def sort_records(records)
#   # end

#   # def paginate_records(records)
#   # end

#   # ==== Insert 'presenter'-like methods below if necessary
# end

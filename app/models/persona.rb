class Persona < ApplicationRecord
	belongs_to :empresa

	#validaciones
	validates :num_legajo,:apellido, :nombre, :dni, :pdf_dni_path, :cuil,:pdf_cuil_path, presence: true
	validates :fecha_nacimiento, :pdf_fecha_nacimiento_path, :nacionalidad, :domicilio, :empresa_id, :telefono, presence: true
	validates :dni, :cuil, :telefono, numericality: { only_integer: true }


	# Inficamos que usa gema carrierwave para subir los pdf, hay que indicar los campos que lo usan
	mount_uploader :pdf_dni_path, PdfUploader
	mount_uploader :pdf_cuil_path, PdfUploader
	mount_uploader :pdf_fecha_nacimiento_path, PdfUploader
end

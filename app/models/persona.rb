class Persona < ApplicationRecord
	belongs_to :empresa

	# Inficamos que usa gema carrierwave para subir los pdf, hay que indicar los campos que lo usan
	mount_uploader :pdf_dni_path, PdfUploader
	mount_uploader :pdf_cuil_path, PdfUploader
	mount_uploader :pdf_fecha_nacimiento_path, PdfUploader
end

class Empresa < ApplicationRecord
	has_many :personas
	has_many :vehiculos
end

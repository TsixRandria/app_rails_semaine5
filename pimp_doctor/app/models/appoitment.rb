class Appoitment < ApplicationRecord
	belongs_to :physician
	belongs_to :patient
	has_many :cities
end

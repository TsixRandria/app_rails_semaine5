class Physician < ApplicationRecord
	has_many :appoitements
	has_many :patients, through: :appoitements
end

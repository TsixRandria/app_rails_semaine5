class Physician < ApplicationRecord
	has_many :appoitements
	has_many :patients, through: :appoitements
	has_and_belongs_to_many :specialities
end

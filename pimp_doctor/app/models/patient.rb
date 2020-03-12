class Patient < ApplicationRecord
	has_many :appoitments
	has_many :physicians, through: :appoitments
end

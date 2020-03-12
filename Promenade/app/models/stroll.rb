class Stroll < ApplicationRecord
	belongs_to :dogsitter
	belongs_to :dog
	has_one :city
end

class Stat < ApplicationRecord

	has_many :ages
	has_many :children, through: :ages
end

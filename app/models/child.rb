class Child < ApplicationRecord
	belongs_to :user
	has_many :stats
	has_many :ages, through: :stats

	
end

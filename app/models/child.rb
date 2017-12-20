class Child < ApplicationRecord
	
	belongs_to :user, required: false
	has_many :stats
	has_many :ages, through: :stats

	
	
end

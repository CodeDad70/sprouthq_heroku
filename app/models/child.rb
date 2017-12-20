class Child < ApplicationRecord
	
	belongs_to :user, required: false
	
	has_many :ages
	has_many :stats, through: :ages


	
end

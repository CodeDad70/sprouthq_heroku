class Child < ApplicationRecord
	
	belongs_to :user, required: false
	
	has_many :cards
	accepts_nested_attributes_for :cards

	
end
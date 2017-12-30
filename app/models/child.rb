class Child < ApplicationRecord
	
	belongs_to :user, required: false
	
	has_many :cards
	accepts_nested_attributes_for :cards

	
	def latest_card
		oldest = self.cards.maximum("age")
		self.cards.find_by(age: (oldest))
		
	end


	
end
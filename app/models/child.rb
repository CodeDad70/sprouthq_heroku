class Child < ApplicationRecord
	
	belongs_to :user, required: false
	
	has_many :cards
	accepts_nested_attributes_for :cards

	# def has_card
	# 	self.age != nil
	# 	self.height != nil
	# 	self.weight !=nil
	# end
	
	def latest_card
		oldest = self.cards.maximum("age")
		self.cards.find_by(age: (oldest))
		
	end


	
end
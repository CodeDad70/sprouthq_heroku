class CardMilestone < ApplicationRecord
	belongs_to :card
	belongs_to :milestone
	
end
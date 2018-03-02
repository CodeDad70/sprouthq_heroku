class Milestone < ApplicationRecord
	has_many :card_milestones
	has_many :cards, through: :card_milestones
end


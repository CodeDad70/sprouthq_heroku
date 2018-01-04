class Milestone < ApplicationRecord
	has_many :child_milestones
	has_many :children, through: :child_milestones
	
end
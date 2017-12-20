class Milestone < ApplicationRecord
	has_many :age_milestones
	has_many :ages, through: :age_milestones
	
end
class Age < ApplicationRecord
	
	has_many :stats
	has_many :children, through: :stats

end

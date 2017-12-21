class Age < ApplicationRecord
	belongs_to :child

	def new 
		@child = current_user.child.find(params[:id])
		binding.pry
	end	
	
end


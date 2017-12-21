class AgesController < ApplicationController

	def index 
		@children = user.children.all
	end
	

	# def create
	# 	@child = Child.find(params[:child_id]
	# 	@age = @child.ages.build(age_params)
	# 	@age.save
	# end

	# private


	# def age_params
 #      params.require(:age).permit(:year, :months, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot, :child_id)
 #    end
	
end

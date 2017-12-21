class ChildrenController < ApplicationController

	def index
		@child = current_user.children 
	end

	def new
		 @child = Child.new	
		 @child.ages.build(year: ' ')
	end

	def create
		
			Child.create(child_params)
			
			redirect_to children_path
		
	end

private

	def child_params
      params.require(:child).permit(:name, :gender, :user_id, ages_attributes:[:year, :months, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot])
    end

end


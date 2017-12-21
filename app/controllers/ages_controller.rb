class AgesController < ApplicationController

	def index 
		
	end

	def new
		@child = Child.find(params[:id])
		binding.pry
	end

	def create
		@child = Child.find(params[:id])
		
		age = @child.ages.build(age_params)
		binding.pry
		age.save
	end

	private


	def age_params
    params.require(:age).permit(:year, :months, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot, :child_id)
  end
	
end

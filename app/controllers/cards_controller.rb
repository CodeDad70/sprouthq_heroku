class CardsController < ApplicationController

	 def index
    if params[:child_id]
      @cards = Child.find(params[:child_id]).cards
    else
      @cards = Card.all
    end
  end
 
  def show
    @card = Card.find(params[:id])
  end

	# def index 
		
	# end

	# def new
	# 	@child = Child.find(params[:id])
	# 	binding.pry
	# end

	# def create
	# 	@child = Child.find(params[:id])
		
	# 	age = @child.ages.build(age_params)
	# 	binding.pry
	# 	age.save
	# end

	# private


	# def card_params
 #    params.require(:age).permit(:year, :months, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot, :child_id)
 #  end
	
	# end

end

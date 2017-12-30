class ChildrenController < ApplicationController

	def index
		@children = current_user.children 
	end

	def new
 		 @child = Child.new	
		 @child.cards.build(age: ' ')
 	end
 
 	def create
		if current_user
			child = Child.create(child_params)
			child.user_id = current_user.id
			child.save	
 			redirect_to children_path
		else
			redirect_to new_user_session_path
		end	
 	end


  def edit
    @child = Child.find_by(id:params[:child_id])
    @card = @child.cards.find_by(id: params[:id])
  end

  def update
 	
 		@child = Child.find(params[:id])
 		@card = @child.cards.find_by(params[:id])  
  	@child.update(child_params)
  	if @child.valid? 

  		@child.save
  		redirect_to child_card_path(@child.id, @card.id)
  	else
  		
  		render :edit
 		 end
  end

 

private

	def child_params
      params.require(:child).permit(:name, :gender, :user_id,  cards_attributes:[:id, :age, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot])
    end

end


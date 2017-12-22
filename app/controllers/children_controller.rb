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

 	def show 
 		 
 	end


private

	def child_params
      params.require(:child).permit(:name, :gender, :user_id, cards_attributes:[:age, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot])
    end

end


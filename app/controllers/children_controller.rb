class ChildrenController < ApplicationController

	def index 
	end

	def new
		 @child = Child.new
	end

	def create
		
		current_user.children = Child.create(child_params)
		if current_user.children.save
			redirect_to children_path
		else
			redirect_to new_child_path
		end
	end

private

	def child_params
      params.require(:child).permit(:name, :gender, :user_id)
    end

end

class ChildrenController < ApplicationController

	def index 
	end

	def new
		 @child = Child.new
	end

	def create
		@child = Child.create(child_params)
		if @child.save
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

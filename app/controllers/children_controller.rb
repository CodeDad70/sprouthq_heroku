class ChildrenController < ApplicationController

	def index
		@children = current_user.children 
	end

  def profiles_index
    @children = current_user.children
    @child =  Child.find_by(id:params[:id])
  end

	def show
    @child = Child.find_by(id:params[:id])
    @card = @child.cards.find_by(id: params[:id]) 
  end

	def new
 		@child = Child.new	
 	end
 
 	def create
		if current_user
			@child = Child.create(child_params)
			@child.user_id = current_user.id
      if @child.valid?
			 @child.save	
 			 redirect_to children_path
		  else
			 render :new  
      end
		end	
 	end


  def edit
    @child = Child.find_by(id:params[:id])
  end

   def update
    @child = Child.find_by(id: params[:id])    
    @child.update(child_params)
    if @child.valid?
      @child.save
      @child = @child.cards.find_by(id: params[:id])     
      redirect_to children_path
    else
      render :edit
     end
  end

  def destroy
    @child = Child.find_by(id:params[:id])
    @child.destroy
    redirect_to children_path 
  end



private

	def child_params
      params.require(:child).permit(:name, :birthday, :gender, :eye_color, :hair_color, :user_id,  cards_attributes:[:id, :age, :years, :months, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot])
    end

end


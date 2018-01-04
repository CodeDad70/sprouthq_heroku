class ChildrenController < ApplicationController

	def index
    if current_user
		  @children = current_user.children 
    else
      redirect_to new_user_session_path
    end
	end

  def profiles_index
    if current_user
      @children = current_user.children
      @child =  Child.find_by(id:params[:id])
    else
      redirect_to new_user_session_path
    end
  end

	def show
    @child = Child.find_by(id:params[:id])
    @card = @child.cards.find_by(id: params[:id]) 
  end

	def new
 		@child = Child.new	
    @year_options = (0..18).to_a
    @month_options = (0..12).to_a
    @card = @child.cards.new
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


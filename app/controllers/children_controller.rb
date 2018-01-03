class ChildrenController < ApplicationController

	def index
		@children = current_user.children 
	end

	def show
    @child = Child.find_by(id:params[:id])
    @card = @child.cards.find_by(id: params[:id]) 
  end

	def new
 		@child = Child.new	
 		@child.cards.build(height: ' ')
    @year_options = (0..18).to_a
    @month_options = (0..12).to_a
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
    @child = Child.find_by(id: params[:id])
   
    
    if @child.update(child_params)

      @child = @child.cards.find_by(id: params[:id])
      
      redirect_to child_card_path(@child.id, @card.id)
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
      params.require(:child).permit(:name, :gender, :user_id,  cards_attributes:[:id, :age, :years, :months, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot])
    end

end


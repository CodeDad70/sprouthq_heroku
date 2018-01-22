class CardsController < ApplicationController
    include CardsHelper

	def index
  	if params[:child_id]
      @cards = Child.find(params[:child_id]).cards
    else
      @cards = Card.all
    end
  end
 
  def show
    @child = Child.find_by(id:params[:child_id])
    @card = @child.cards.find_by(id: params[:id])  
  end

  def new 
    @year_options = (0..18).to_a
    @month_options = (0..11).to_a
  	@child= Child.find_by(id: params[:child_id])
    @child.cards.build(height: ' ')
    @card = @child.cards.new
  end


  def create
    @year_options = (0..18).to_a
    @month_options = (0..11).to_a 
    @child= Child.find_by(id: params[:child_id]) 
    @card = @child.cards.build(card_params)
    @card.age = @card.age_create
    if @child.valid? 
      @card.save
      redirect_to child_card_path(@child.id, @card.id)
    else 
      render :new 
    end
  end

  def edit
    @year_options = (0..18).to_a
    @month_options = (0..11).to_a
    @child = Child.find_by(id:params[:child_id])
    @card = @child.cards.find_by(id: params[:id])
  end

  def update
    @year_options = (0..18).to_a
    @month_options = (0..11).to_a
    @child = Child.find_by(id: params[:child_id])
    @card = @child.cards.find_by(id: params[:id])   
    @card.update(card_params)
    @card.age = @card.age_create
    
    if @card.valid?
      @card.save
      @card = @child.cards.find_by(id: params[:id])
      redirect_to child_card_path(@child.id, @card.id)
    else
      render :edit
     end
  end

  def destroy
    @child = Child.find_by(id:params[:child_id])
    @card = @child.cards.find_by(id: params[:id])
    @card.destroy
    redirect_to children_path 
  end


	private


	def card_params
    params.require(:card).permit(:age, :years, :months, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot, :image, :image_cache, :child_id, milestone_ids:[], milestones_attributes: [:title])
  end
	

end

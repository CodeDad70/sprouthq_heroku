class CardMilestones < ActiveRecord::Migration[5.1]
  def change
  	create_table :card_milestones do |t|
  		
  		t.integer :card_id
  		t.integer :milestone_id
  		
  		

  		t.timestamps null: false
  	end

  end
end

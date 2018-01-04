class ChildMilestones < ActiveRecord::Migration[5.1]
  def change
  	create_table :child_milestones do |t|
  		
  		t.integer :child_id
  		t.integer :milestone_id

  		t.timestamps null: false
  	end

  end
end

class AgeMilestones < ActiveRecord::Migration[5.1]
  def change
  	create_table :age_milestones do |t|
  		
  		t.integer :age_id
  		t.integer :milestone_id

  		t.timestamps null: false
  	end

  end
end

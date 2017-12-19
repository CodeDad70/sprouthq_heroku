class CreateMilestones < ActiveRecord::Migration[5.1]
  def change
    create_table :milestones do |t|
    	t.string :description
    	t.integer :child_id
    	t.integer :age_id

      t.timestamps
    end
  end
end

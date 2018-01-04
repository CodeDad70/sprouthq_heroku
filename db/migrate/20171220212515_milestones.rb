class Milestones < ActiveRecord::Migration[5.1]
  def change
  	create_table :milestones do |t|
  		t.string :description
  		t.integer :age
      t.integer :years
      t.integer :months

  	end
  		
  end
end

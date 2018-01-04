class Milestones < ActiveRecord::Migration[5.1]
  def change
  	create_table :milestones do |t|
  		t.string :title
  		t.text :description
  		t.string :age
      t.integer :years
      t.integer :months

  	end
  		
  end
end

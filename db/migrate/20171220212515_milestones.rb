class Milestones < ActiveRecord::Migration[5.1]
  def change
  	create_table :milestones do |t|
  		t.string :description

  	end
  		
  end
end

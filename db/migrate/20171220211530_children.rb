class Children < ActiveRecord::Migration[5.1]
  def change
  	create_table :children do |t|
  		t.string :name
  		t.date :birthday
  		t.string :eye_color
  		t.string :hair_color
  		t.string :gender
  		t.integer :user_id

  		t.timestamps null: false
  	end
  end
end

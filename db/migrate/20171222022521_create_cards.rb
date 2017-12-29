class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
			t.integer :age
    	t.string :height
    	t.string :weight
    	t.decimal :advil_dosage
    	t.decimal :tylenol_dosage
    	t.boolean :flu_shot, default: false

    	t.integer :child_id


      t.timestamps null: false
    end
  end
end

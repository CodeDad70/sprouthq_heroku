class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
    	t.string :height
    	t.integer :weight
    	t.integer :advil 
    	t.integer :tylenol
    	t.boolean :flu_shot, default: false
    	t.string :milestones
    	t.string :vaccines



      t.timestamps
    end
  end
end

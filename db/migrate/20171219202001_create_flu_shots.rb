class CreateFluShots < ActiveRecord::Migration[5.1]
  def change
    create_table :flu_shots do |t|
    	t.boolean :given
    	t.integer :child_id
    	t.integer :age_id


      t.timestamps
    end
  end
end

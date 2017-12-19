class CreateMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :medicines do |t|
    	t.string :name
    	t.integer :amount
    	t.integer :child_id
    	t.integer :age_id
    	

      t.timestamps
    end
  end
end

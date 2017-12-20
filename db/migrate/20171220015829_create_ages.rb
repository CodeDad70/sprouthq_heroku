class CreateAges < ActiveRecord::Migration[5.1]
  def change
    create_table :ages do |t|
    	t.integer :months
    	t.integer :years
    	t.integer :child_id
    	t.integer :stat_id

      t.timestamps
    end
  end
end

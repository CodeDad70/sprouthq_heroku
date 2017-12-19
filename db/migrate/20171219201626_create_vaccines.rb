class CreateVaccines < ActiveRecord::Migration[5.1]
  def change
    create_table :vaccines do |t|
    	t.string :name
    	t.date :date_given
    	t.integer :child_id
    	t.integer :age


      t.timestamps
    end
  end
end

class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
    	t.integer :f_id
    	t.string :food_name
    	t.float :food_value
    	t.timestamps null: false
    end
  end
end

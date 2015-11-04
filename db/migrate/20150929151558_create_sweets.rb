class CreateSweets < ActiveRecord::Migration
  def change
    create_table :sweets do |t|
    	t.integer :f_id
    	t.float :sweetness
    	t.float :coefficient
	t.timestamps null: false
    end
  end
end

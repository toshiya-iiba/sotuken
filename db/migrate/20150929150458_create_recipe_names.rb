class CreateRecipeNames < ActiveRecord::Migration
  def change
    create_table :recipe_names do |t|
	    t.string :recipe_name
	    t.timestamps null: false
    end
  end
end

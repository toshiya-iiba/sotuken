require 'nokogiri'
require 'open-uri'
require 'active_record'
require 'yaml'
require "rubygems"

ActiveRecord::Base.establish_connection(
  adapter:  "mysql2",
  host:     "localhost",
  username: "root",
  password: "toshiya",
  database: "sotuken_development"
)

@@url = ["http://cookpad.com/recipe/3425460", "http://cookpad.com/recipe/3427373"]

# class RecipeName < ActiveRecord::Base
# 	url = @@url
# 	url.each do |aaa|
# 		doc = Nokogiri::HTML(open(aaa))
# 		rd = RecipeName.new
# 		rname = doc.xpath('//*[@id="recipe-title"]/h1')
# 		rd.recipe_name = rname.text.delete("\n")
# 		p rd.recipe_name
# 		#rd.save

# 	end
# end

	

# class Food < ActiveRecord::Base
# 	fid = 1
# 	url = @@url
# 	rid = 1
# 	url.each do |aaa|

# 		doc = Nokogiri::HTML(open(aaa))
# 		doc.xpath('//*[@id="ingredients_list"]/div').each do

# 			food = Food.new
# 			food.id = rid
# 			food.f_id = fid


# 			f_name = doc.xpath("//*[@id='ingredients_list']/div[#{fid}]/div[1]/span")

# 			food.food_name = f_name.text.delete("■")
			
# 			food_size = doc.xpath("//*[@id='ingredients_list']/div[#{fid}]/div[2]")
# 			food.food_value= food_size.text
			
# 			# food.save
# 			p food
# 			fid = fid +1
# 		end
# 		rid =rid +1 
# 		fid = 1
# 	end
# end
class food < ActiveRecord::Base
	url=
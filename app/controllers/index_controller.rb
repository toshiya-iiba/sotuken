require 'rubygems'
require 'nokogiri'
require 'open-uri'

class IndexController < ApplicationController
	def index
		@recipe = Recipe.all
	end
end
def show
	cookpad = "http://cookpad.com/recipe/"
		url = [cookpad + "3425460",
		 cookpad + "3427373",
		 cookpad + "3427639",
		 cookpad + "3233907",
		 cookpad + "3386696",
		 cookpad + "3378494",
		 cookpad + "3254277",
		 cookpad + "3466066"]

		url.each do |aaa|
			doc = Nokogiri::HTML(open(aaa))
			rd = Recipe.new
			rname = doc.xpath('//*[@id="recipe-title"]/h1')
			p rname
			rd.recipe_name = rname.text
			rd.save
		end
end

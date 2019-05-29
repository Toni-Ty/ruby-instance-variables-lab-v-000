require 'pry'

  	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"

  	page = Nokogiri::HTML(open(site))
  	coffee = page.css("div.col-md-9.list section")

  	coffee.each do |coffee_drink|
  	  coffee_descrip = coffee_drink.css("h2").text
  	   puts coffee_descrip.each_with_index(1) do |coffee, index|
         binding.pry
  	    end
  	end

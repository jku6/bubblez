class HomeController < ApplicationController


	

	def new
    x = HTTParty.get('constitution.org/usdeclar.txt')
    y = x.split(' ')
    z = y.length
	  
    t = Tree.new

    z.times do
      t.insert(y.pop)
    end

    
  end



		
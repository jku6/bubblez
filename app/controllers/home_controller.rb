class HomeController < ApplicationController

  def new
    x = HTTParty.get('http://www.constitution.org/usdeclar.txt')
    y = x.split
    # z = y.length
	  
    t = Tree.new

    y.each do |word|
      t.insert(word)
    end


    @view = t.parsed

  end

  def parse
  end

  def index
  end

end



		
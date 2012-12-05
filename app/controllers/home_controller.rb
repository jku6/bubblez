class HomeController < ApplicationController

  def new
    url = 'parse'
    x = HTTParty.get(url)
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



		
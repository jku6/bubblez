class HomeController < ApplicationController

  def home
  end

  def parse

    url = params[:parse]
    binding.pry
    get = HTTParty.get(url)
    words_array = get.split
    words_array = words_array.uniq
    z = words_array.length

    

   

  end

  

  def index
  end

end



		
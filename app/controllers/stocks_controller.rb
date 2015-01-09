class StocksController < ApplicationController
  def index

  	search = params[:search] || "alibaba"

  	if search =~ /\s/
			search.gsub!(/\s+/, "+")
		end
  	
  	response = HTTParty.get("http://www.reuters.com/search?blob=#{search}")
  	@company = search.gsub(/[+]/, " ").upcase
  	dom = Nokogiri::HTML(response.body)
  	@results = dom.css("#headerQuoteContainer")
    
  end
end






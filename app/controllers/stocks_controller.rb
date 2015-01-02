class StocksController < ApplicationController
  def index
  	# search = params[:search] || "book"
  	search = params[:search] || "alibaba"
  	# response = HTTParty.get("http://www.amazon.com/s/ref=sr_st_review-rank?keywords=#{search}")
  	response = HTTParty.get("http://www.reuters.com/search?blob=#{search}")
  	# dom = Nokogiri::HTML(response.body)
  	dom = Nokogiri::HTML(response.body)
  	# @results = dom.css("#s-results-list-atf li")[0..4]
  	@results = dom.css("#headerQuoteContainer")
  end
end






require 'sinatra'
# require 'json'
require 'rubygems'

require 'nokogiri'
require 'open-uri'


get '/' do
	url = "https://www.reddit.com/"

	data = Nokogiri::HTML(open(url))

	@posts = data.css('.thing.link')

	# @posts.each do |post|
	# 	# puts post.css('.thumbnail img').img
	# 	# puts post.css('a.title').text
	# 	anchor = post.css('a.title')[0]
	# 	# puts post.inspect
	# 	thumbnail = post.css('.thumbnail img')[0]
	# 	if not thumbnail.nil?
	# 		puts thumbnail.attr('src')
	# 	end
	# 	puts anchor.text
	# 	puts anchor.attr('href')
	# end

	erb :news

end



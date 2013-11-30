require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'


# Creating intense-river-7310... done, stack is cedar
# http://intense-river-7310.herokuapp.com/ | git@heroku.com:intense-river-7310.git
# Git remote heroku added

get '/' do
	@names = "Emma and Gene"
	@show_description = true
  erb  :index
end

post '/twitter' do

 @firstHash = params[:first_hash]
 @secondHash = params[:second_hash]
 erb :results

end

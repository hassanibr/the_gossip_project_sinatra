#require 'bundler'
#Bundler.require
require 'gossip'

class ApplicationController < Sinatra::Base

	get '/' do
		erb :index, locals: {gossips: Gossip.all}
	end

#impossible d'afficher le formulaire avec post
  get '/gossips/new/' do
     erb :new_gossip
  end

#route pour Gossip
   post '/gossips/new/' do
	 Gossip.new(params["gossip_author"], params["gossip_content"]).save
      redirect '/'
   end

 
  #run! if app_file == $0
end
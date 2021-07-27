#require 'bundler'
#Bundler.require

class ApplicationController < Sinatra::Base
  #get '/' do
  #	erb :index
  #end

  #get '/gossips/new/' do
  #	erb :new_gossip
  #end

  post '/' do
  	erb :new_gossip
  	puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
  end

  #run! if app_file == $0
end
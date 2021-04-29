require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @characters = Character.all
  erb :index
end

post '/create' do
  new_character = Character.new(params['name'], params['species'])
  new_character.save
  redirect '/'
end

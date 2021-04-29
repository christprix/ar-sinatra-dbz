require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  new_character = Character.new("Vegeta#{Time.now}", "Sayan")
  new_character.save
  @name = Character.all.last.name
  erb :index
end

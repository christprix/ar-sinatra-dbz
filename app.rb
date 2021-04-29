require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = Character.all.first.name
  erb :index
end

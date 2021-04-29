require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = 'batch #587'
  erb :index
end

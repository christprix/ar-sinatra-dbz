require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = 'people from earth'
  erb :index
end

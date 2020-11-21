require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @characters = Character.all
  erb :index
end

get "/characters/:id" do
  @character = Character.find(params[:id])
  erb :show
end
post "/create" do
  Character.create!(
    name: params[:name],
    origin: params[:origin],
    image: "https://dragon-ball-api.herokuapp.com/images/#{params[:name]}.jpg",
  )
  redirect "/"
end

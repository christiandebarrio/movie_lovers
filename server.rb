require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb(:home)
end

post "/search" do
  word = params[:word]
end
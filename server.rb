require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/MovieSearch.rb'



get "/" do
  erb(:home)
end

post "/search" do
  word = params[:word]
  MovieSearch.new(word).search
  redirect "/posters"
end

get "/posters" do
  erb(:posters)
end
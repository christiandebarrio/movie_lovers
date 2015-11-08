require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/MovieSearch.rb'

movie_search_game = MovieSearch.new
searcher = "fake" #select class to test "fake" or "Imdb"

get "/" do
  erb(:home)
end

post "/search" do
  word = params[:word]
  movie_search_game.search(word, searcher)
  redirect "/posters"
end

get "/posters" do
  @movies_list = movie_search_game.movies_list
  erb(:posters)
end
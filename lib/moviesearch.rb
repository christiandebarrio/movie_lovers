require 'imdb'
require 'pry'
require_relative './searchfake.rb'

class MovieSearch
  attr_accessor :movies_list

  def initialize 
    
    @movies_list = []
    
  end

  def search text_search, searcher
    
    movies = define_searcher(searcher, text_search).movies
    
    i = 0

    while @movies_list.size < 9 && i < movies.size && movies.size != 0
        
      add_movie_with_poster(movies[i])
      i += 1

    end

    @movies_list

  end

  def define_searcher searcher_type, text_search

    if searcher_type == 'Imdb'
      Imdb::Search.new(text_search)
    else
      SearchFake.new(text_search)
    end

  end

  def add_movie_with_poster movie
    @movies_list.push(movie) if movie.poster != ""
  end

end
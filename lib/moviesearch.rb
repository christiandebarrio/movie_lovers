require 'imdb'
require 'pry'

class MovieSearch
  attr_accessor :text

  def initialize text_search, searcher
    @text_search = text_search
    @movies_list = []
    @searcher = define_searcher(searcher)
  end

  def search
    @movies_list = @searcher.movies[0..8]
  end

  def define_searcher searcher_type

    if searcher_type == 'Imdb'
      Imdb::Search.new(@text_search)
    else
      SearchFake.new(@text_search)
    end

  end

end
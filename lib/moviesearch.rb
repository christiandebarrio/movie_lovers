require 'imdb'
require 'pry'

class MovieSearch
  attr_accessor :text

  def initialize text
    @text_search = text
    @movies_list = []
  end

  def search
    @movies_list = Imdb::Search.new(@text_search).movies[0..8]
  end

end
require_relative '../lib/moviesearch.rb'
require_relative '../lib/searchfake.rb'


RSpec.describe 'MovieSearch' do

  before :each do
    @movie_search = MovieSearch.new
    poster = "http://ia.media-imdb.com/images/M/MV5BMTYwNjAyODIyMF5BMl5BanBnXkFtZTYwNDMwMDk2.jpg"
    @movie_poster = MovieFake.new("id","title", "http://imdb.com/", poster)
    @movie_no_poster = MovieFake.new("id","title", "http://imdb.com/", "")
    @searcher = "fake" #select class to test "fake" or "Imdb"
  end

  describe "#search" do

    it "should return an empty array when search nothing" do
      expect(@movie_search.search("", @searcher).size).to eq(0)
    end

    it "true if the first title object contain batman" do
      expect(@movie_search.search("batman", @searcher)[0].title.downcase.include?("batman")).to be(true)
    end

    it "array size has to be minor than 10" do
      expect(@movie_search.search("batman", @searcher).size).to be < (10)
    end

  end

  describe '#add_movie_with_poster' do

    it "NOT add to @movies_list if the movie doesn't have poster" do
      @movie_search.add_movie_with_poster(@movie_no_poster)
      expect(@movie_search.movies_list.size).to eq(0)
    end

    it "ADD to @movies_list if the movie doesn't have poster" do
      @movie_search.add_movie_with_poster(@movie_poster)
      expect(@movie_search.movies_list.size).to eq(1)
    end

  end

end
require_relative '../lib/moviesearch.rb'

RSpec.describe 'MovieSearch' do

  before :each do

  end

  describe "#search" do

    it "should return an empty array when search nothing" do
      expect(MovieSearch.new("").search.length).to eq(0)
    end

    it "true if the first object contain batman" do
      expect(MovieSearch.new("batman").search[0].title.downcase.include?("batman")).to be(true)
    end

    it "array length has to be minor than 10" do
      expect(MovieSearch.new("batman").search.length).to be < (10)
    end
  end
end
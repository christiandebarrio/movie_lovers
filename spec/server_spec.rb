require_relative '../server.rb'
require 'rack/test'
require 'pry'

describe 'Server Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should load the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should post from the home page" do
    post '/search'
    expect(last_response).to be_ok
  end
end
require 'rspec'
require '../start.rb'

describe "class Server" do

  it "should check if database exists" do
    server = Server.new('test.db')
    server.check_table('Word').should be_true
  end

  it "should start crawling" do
    server = Server.new('test.db')
    server.start_crawling('https://www.coursera.org/')
    server.crawling_status.should be_true
  end
end

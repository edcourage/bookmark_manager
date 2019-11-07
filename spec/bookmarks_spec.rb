require 'bookmarks'
require_relative 'database_test_helper'
describe Bookmarks do

  context "#all" do
    it "returns all the bookmarks" do
      add_bookmarks_for_test
      expect(Bookmarks.all).to include('http://www.maker.com', 'http://www.youtube.com')
    end
  end

  context "#add_bookmarks" do
    it 'bookmark gets added to database' do
      Bookmarks.add_bookmarks(url:"www.bbcnews.com")
      expect(Bookmarks.all).to include('www.bbcnews.com')
    end
  end
end

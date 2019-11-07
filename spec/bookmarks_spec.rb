require 'bookmarks'
require_relative 'database_test_helper'
describe Bookmarks do

  context "#all" do
    it "returns all the bookmarks" do
      add_bookmarks_for_test
      expect(Bookmarks.all).to include(['http://www.maker.com',"maker"], ['http://www.youtube.com',"youtube"])
    end
  end

  context "#add_bookmarks" do
    it 'url and title gets added to database' do
      Bookmarks.add_bookmarks(url:"www.bbcnews.com", title:"lings")
      expect(Bookmarks.all).to include(['www.bbcnews.com','lings'])
    end

  end



end

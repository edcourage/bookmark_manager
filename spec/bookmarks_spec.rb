require 'bookmarks'
require_relative 'database_test_helper'
describe Bookmarks do

  context "#all" do
    it "creates new instances of Bookmarks for each row with correct title" do
      add_bookmarks_for_test
      bookmark = Bookmarks.all
      expect(bookmark[0].title).to eq "maker"
      expect(bookmark[1].title).to eq "youtube"
      expect(bookmark[2].title).to eq "facebook"
    end

    it "creates new instances of Bookmarks for each row with correct url" do
      add_bookmarks_for_test
      bookmark = Bookmarks.all
      expect(bookmark[0].url).to eq "http://www.maker.com"
      expect(bookmark[1].url).to eq "http://www.youtube.com"
      expect(bookmark[2].url).to eq "http://www.facebook.com"
    end
  end

  context "#add_bookmarks" do
    it 'url and title gets added to database' do
      Bookmarks.add_bookmarks(url:"www.bbcnews.com", title:"lings")
      bookmark = Bookmarks.all
      expect(bookmark[0].url).to eq "www.bbcnews.com"
      expect(bookmark[0].title).to eq "lings"
    end

  end





end

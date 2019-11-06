require 'bookmarks'
require_relative 'database_test_helper'
describe Bookmarks do

  context "#all" do
    it "returns all the bookmarks" do
      add_bookmarks
      expect(Bookmarks.all).to include('http://www.maker.com', 'http://www.youtube.com')
    end
  end

end

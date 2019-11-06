require 'bookmarks'

describe Bookmarks do
  # let(:bookmarks_instance) { Bookmarks.new }
  # context "#initialize" do
  #   it "created with and array" do
  #     expect(subject.bookmarks).to be_a Array
  #   end
  # end

  context "#all" do
    it "returns all the bookmarks" do
      expect(Bookmarks.all).to include("http://www.makersacademy.com", "http://www.google.com", "http://www.destroyallsoftware.com")
    end
  end

end

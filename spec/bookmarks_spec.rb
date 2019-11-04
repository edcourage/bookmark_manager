require 'bookmarks'

describe Bookmarks do
  let(:bookmarks_instance) { Bookmarks.new }
  context "#initialize" do
    it "created with and array" do
      expect(subject.bookmarks).to be_a Array
    end
  end

  context "#all" do
    it "returns all the bookmarks" do
      expect(bookmarks_instance.all).to eq "www.bookmark1.com, www.bookmark2.com, www.bookmark3.com"
    end
  end

end

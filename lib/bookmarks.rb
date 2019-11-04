class Bookmarks
  attr_reader :bookmarks
  def initialize
    @bookmarks = ["www.bookmark1.com", "www.bookmark2.com", "www.bookmark3.com"]
  end

  def all
    @bookmarks.join(", ")
  end

end

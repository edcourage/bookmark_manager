require 'pg'


class Bookmarks
  attr_reader :bookmarks
  def initialize
    @bookmarks = []
  end

  def all
    database = PG.connect(dbname: 'bookmark_manager')
    rows = database.exec "SELECT * FROM bookmarks"
    rows.each do |row|
      @bookmarks << row["url"]
    end
    @bookmarks
  end

end

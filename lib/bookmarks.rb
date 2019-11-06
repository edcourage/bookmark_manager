require 'pg'


class Bookmarks
  attr_reader :bookmarks
  ENV['RACK_ENV'] == 'test' ? @@database = PG.connect(dbname: 'bookmark_manager_test') : @@database = PG.connect(dbname: 'bookmark_manager')
  def self.all
    bookmarks = []
    @@database.exec("SELECT * FROM bookmarks").each do |row|
      bookmarks << row["url"]
    end
    bookmarks
  end

end

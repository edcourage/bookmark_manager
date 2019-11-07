require 'pg'


class Bookmarks
  attr_reader :bookmarks
  ENV['RACK_ENV'] == 'test' ? @@database = PG.connect(dbname: 'bookmark_manager_test') : @@database = PG.connect(dbname: 'bookmark_manager')

  def self.all
    bookmarks = []
    @@database.exec("SELECT * FROM bookmarks").each do |row|
      bookmarks << [row["url"], row["title"]]
    end
    bookmarks
  end

  def self.add_bookmarks(url:, title:)
    @@database.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}')")
  end
end

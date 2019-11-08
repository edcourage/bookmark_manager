require 'pg'


class Bookmarks
  attr_reader :url, :title
  ENV['RACK_ENV'] == 'test' ? @@database = PG.connect(dbname: 'bookmark_manager_test') : @@database = PG.connect(dbname: 'bookmark_manager')

  def initialize(url, title)
    @bookmarks = []
    @url = url
    @title = title
  end

  def self.all
    @@database.exec("SELECT * FROM bookmarks").map do |row|
      Bookmarks.new(row["url"], row["title"])
    end
  end

  def self.add_bookmarks(url:, title:)
    @@database.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}')")
  end
end

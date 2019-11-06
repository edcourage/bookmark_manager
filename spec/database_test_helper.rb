require 'pg'

  @@con = PG.connect(dbname: "bookmark_manager_test")

def reset_table
  @@con.exec("TRUNCATE bookmarks")
end

def add_bookmarks

  @@con.exec("INSERT INTO bookmarks (url)
  VALUES ('http://www.maker.com'),
  ('http://www.youtube.com'),
  ('http://www.facebook.com')")
end

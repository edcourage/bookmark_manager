require 'pg'

  @@con = PG.connect(dbname: "bookmark_manager_test")

def reset_table
  @@con.exec("TRUNCATE bookmarks")
end

def add_bookmarks_for_test

  @@con.exec("INSERT INTO bookmarks (url, title)
  VALUES ('http://www.maker.com', 'maker'),
  ('http://www.youtube.com', 'youtube'),
  ('http://www.facebook.com', 'facebook')")
end

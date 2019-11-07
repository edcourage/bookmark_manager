feature 'bookmark manager display' do
  scenario 'say hello world' do
    visit '/'
    expect(page).to have_content "Hello, World."
  end

  scenario 'viewing bookmarks' do
    add_bookmarks_for_test
    visit '/'
    click_on 'View Bookmarks'
    expect(page).to have_text "http://www.maker.com"
  end


end

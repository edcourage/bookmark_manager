feature 'bookmark manager display' do
  scenario 'say hello world' do
    visit '/'
    expect(page).to have_content "Bookmark Manager!"
  end

  scenario 'viewing bookmarks' do
    add_bookmarks_for_test
    visit '/'
    click_on 'View Bookmarks'
    expect(page).to have_text "maker"
  end


end

feature 'Adding Bookmarks' do

  scenario 'add a new bookmark' do
    visit '/'
    fill_in 'bookmark', with: 'www.bookmark.com'
    click_on 'Save Bookmark'
    expect(page).to have_text("www.bookmark.com")

  end
end

feature 'Adding Bookmarks' do

  scenario 'add a new bookmark url' do
    visit '/'
    fill_in 'url', with: 'www.youtube.com'
    fill_in 'title', with: 'youtube'
    click_on 'Save Bookmark'
    expect(page).to have_text("Title: youtube")
  end


end

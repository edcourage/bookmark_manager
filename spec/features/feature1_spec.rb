feature 'bookmark manager display' do
  scenario 'say hello world' do
    visit '/'
    expect(page).to have_content "Hello, World."
  end

  scenario 'viewing bookmarks' do
    visit '/'
    click_on 'View Bookmarks'
    expect(page).to have_text ["http://www.makersacademy.com", "http://www.google.com", "http://www.destroyallsoftware.com"]
  end


end

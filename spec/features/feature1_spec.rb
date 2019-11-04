feature 'bookmark manager display' do
  scenario 'say hello world' do
    visit '/'
    expect(page).to have_content "Hello, World."
  end

  scenario 'viewing bookmarks' do
    visit '/'
    click_on 'View Bookmarks'
    expect(page).to have_text "www.bookmark1.com, www.bookmark2.com, www.bookmark3.com"
  end


end

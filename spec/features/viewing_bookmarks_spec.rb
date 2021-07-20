feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'seeing the title' do
      visit('/')
      expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'list of bookmarks' do
  scenario 'view the bookmarks' do
    visit('/')
    click_button 'Bookmarks'
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.github.com'
    end
  end
end

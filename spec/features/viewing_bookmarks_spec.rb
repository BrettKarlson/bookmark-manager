feature 'Viewing bookmarks' do
  scenario 'visit the index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
  scenario 'view the bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'Bookmark 1'
  end
end

# frozen_string_literal: true

feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'seeing the title' do
      visit('/')
      expect(page).to have_content 'Bookmark Manager'
    end
  end

  feature 'list of bookmarks' do
    scenario 'view the bookmarks' do
      Bookmark.create(url: 'http://www.makersacademy.com')
      Bookmark.create(url: 'http://www.destroyallsoftware.com')
      Bookmark.create(url: 'http://www.google.com')

      visit('/')
      click_button 'Bookmarks'
      expect(page).to have_content 'http://www.makersacademy.com'
      expect(page).to have_content 'http://www.destroyallsoftware.com'
      expect(page).to have_content 'http://www.google.com'
    end
  end
end

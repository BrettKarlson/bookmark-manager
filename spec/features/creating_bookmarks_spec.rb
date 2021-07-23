# frozen_string_literal: true

feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/new')

    fill_in('url', with: 'http://www.example.org')
    fill_in('title', with: 'Example')
    click_button('Submit')
    Bookmark.create(title: 'Example', url: 'http://www.example.org')
    expect(page).to have_link('Example', href: 'http://www.example.org')
  end
end

# frozen_string_literal: true

require 'bookmark'
require 'setup_test_database'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'makers')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'makers'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end
  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.example.org', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.example.org'
    end
  end
  describe '.delete' do
    it 'deletes a bookmark' do
      conn = Bookmark.create(title: 'Fun', url: 'http://www.funinhere.com')
      expect(Bookmark.all.length).to eq 1
      Bookmark.delete(id: conn.id)
      expect(Bookmark.all.length).to eq 0
    end
  end
end

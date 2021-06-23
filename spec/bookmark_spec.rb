require 'bookmark'
require 'database_helpers'

describe Bookmark do

  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.add(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.add(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
      Bookmark.add(url: 'http://www.google.com', title: 'Google')
  
      bookmarks = Bookmark.all
  
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '#add' do
    it 'creates a new bookmark' do
      new_bm = Bookmark.add(url: 'http://www.hellothere.com', title: 'Hello There')
      persisted_data = persisted_data(id: new_bm.id)

      expect(new_bm).to be_a Bookmark
      expect(new_bm.id).to eq persisted_data['id']
      expect(new_bm.title).to eq 'Hello There'
      expect(new_bm.url).to eq 'http://www.hellothere.com'
    end
  end


end

require 'bookmark'

describe Bookmark do
  it 'returns a list of bookmarks' do
    expect(subject.all).to eq([])
  end
end

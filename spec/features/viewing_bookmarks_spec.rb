require 'spec_helper'

feature 'opening the webpage' do
  scenario 'viewing the bookmarks' do
    visit("/")
    visit("/bookmarks")
    expect(page).to have_content("Your Bookmarks")
  end
end

describe '.all' do
  it 'returns a list of bookmarks' do
    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
  end
end

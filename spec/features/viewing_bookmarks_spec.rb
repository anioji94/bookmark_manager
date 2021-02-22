require 'spec_helper'

feature 'opening the webpage' do
  scenario 'viewing the bookmarks' do
    visit("/")
    visit("/bookmarks")
    expect(page).to have_content("Your Bookmarks")
  end
end

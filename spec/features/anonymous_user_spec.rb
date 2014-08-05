require 'rails_helper'
require 'capybara/rails'

feature 'as an anonymous user,' do
  scenario 'check out the "about" page' do
    visit "/"
    click_link "about"
    expect(page).to have_content("Lorem ipsum dolor")
  end
end
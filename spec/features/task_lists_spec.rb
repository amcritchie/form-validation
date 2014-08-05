require 'rails_helper'
require 'capybara/rails'

feature 'Task lists' do

  before :each do
    create_user email: "user@example.com"
    TaskList.create!(name: "Work List")
    TaskList.create!(name: "Household Chores")

    visit signin_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
  end

  scenario 'User can view task lists' do

    expect(page).to have_content("Work List")
    expect(page).to have_content("Household Chores")
  end

  scenario "User can add a task list and see splash message." do
    click_link "+ Add Task List"
    fill_in "Name", with: "Capaybara task list."
    click_button "Create Task List"
    expect(page).to have_content("Task List was created")
    expect(page).to have_content("Capaybara task list.")
  end

  scenario "User cannot add a task list without a name." do
    click_link "+ Add Task List"
    fill_in "Name", with: ""
    click_button "Create Task List"
    expect(page).to have_content("Your task list could not be created.")
  end

end
require 'rails_helper'
require 'capybara/rails'

feature 'Tasks.' do
  before :each do
    create_user email: "user@example.com"


    visit signin_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    click_link "+ Add Task List"
    fill_in "Name", with: "Test Task List"
    click_button "Create Task List"

  end

  scenario 'Add a task.' do
    visit "/"
    click_link "Add Task"
    fill_in "Task", with: "Prueba de rspec."
    click_button "Create Task"

    expect(page).to have_content("Prueba de rspec.")
    expect(page).to have_content("Task was created successfully!")
  end

  scenario 'Blank task error.' do
    visit "/"
    click_link "Add Task"
    fill_in "Task", with: ""
    click_button "Create Task"

    expect(page).to have_content("Your task could not be created")
  end
end
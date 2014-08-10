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

  scenario 'User can view tasks lists' do

    expect(page).to have_content("Work List")
    expect(page).to have_content("Household Chores")
  end

  scenario "User can add a tasks list and see splash message." do
    click_link "+ Add Task List"
    fill_in "Name", with: "Capaybara tasks list."
    click_button "Create Task List"
    expect(page).to have_content("Task List was created")
    expect(page).to have_content("Capaybara tasks list.")
  end

  scenario "User cannot add a tasks list without a name." do
    click_link "+ Add Task List"
    fill_in "Name", with: ""
    click_button "Create Task List"
    expect(page).to have_content("Your tasks list could not be created.")
  end
end

feature 'Edit and Delete/' do
  before :each do
    create_user email: "user@example.com"

    visit signin_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    click_link "+ Add Task List"
    fill_in "Name", with: "Task to edit and delete"
    click_button "Create Task List"
  end

  scenario "Edit" do
    click_link "Edit"
    expect(find_field("Name").value).to eq("Task to edit and delete")
    fill_in "Name", with: "Task is now edited"
    click_button "Edit Task List"
    expect(page).to have_content("Task is now edited")
    expect(page).to have_content("Task List was updated successfully!")
  end

  scenario "Delete" do
    # click_link "Delete"
  end
end

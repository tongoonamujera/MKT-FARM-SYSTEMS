require "application_system_test_case"

class TimebooksTest < ApplicationSystemTestCase
  setup do
    @timebook = timebooks(:one)
  end

  test "visiting the index" do
    visit timebooks_url
    assert_selector "h1", text: "Timebooks"
  end

  test "creating a Timebook" do
    visit timebooks_url
    click_on "New Timebook"

    fill_in "Date", with: @timebook.date
    fill_in "Day", with: @timebook.day
    fill_in "Employee name", with: @timebook.employee_name
    fill_in "Employee number", with: @timebook.employee_number
    fill_in "Gross", with: @timebook.gross
    fill_in "Rate", with: @timebook.rate
    fill_in "User", with: @timebook.user_id
    click_on "Create Timebook"

    assert_text "Timebook was successfully created"
    click_on "Back"
  end

  test "updating a Timebook" do
    visit timebooks_url
    click_on "Edit", match: :first

    fill_in "Date", with: @timebook.date
    fill_in "Day", with: @timebook.day
    fill_in "Employee name", with: @timebook.employee_name
    fill_in "Employee number", with: @timebook.employee_number
    fill_in "Gross", with: @timebook.gross
    fill_in "Rate", with: @timebook.rate
    fill_in "User", with: @timebook.user_id
    click_on "Update Timebook"

    assert_text "Timebook was successfully updated"
    click_on "Back"
  end

  test "destroying a Timebook" do
    visit timebooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Timebook was successfully destroyed"
  end
end

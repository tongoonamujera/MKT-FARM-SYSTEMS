require "application_system_test_case"

class CalendersTest < ApplicationSystemTestCase
  setup do
    @calender = calenders(:one)
  end

  test "visiting the index" do
    visit calenders_url
    assert_selector "h1", text: "Calenders"
  end

  test "creating a Calender" do
    visit calenders_url
    click_on "New Calender"

    fill_in "Activity", with: @calender.Activity
    fill_in "Company name", with: @calender.Company_Name
    fill_in "Date", with: @calender.Date
    fill_in "Farm name", with: @calender.Farm_Name
    fill_in "Month", with: @calender.Month
    fill_in "Pro number", with: @calender.Pro_Number
    fill_in "Season", with: @calender.Season
    fill_in "User", with: @calender.user_id
    click_on "Create Calender"

    assert_text "Calender was successfully created"
    click_on "Back"
  end

  test "updating a Calender" do
    visit calenders_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @calender.Activity
    fill_in "Company name", with: @calender.Company_Name
    fill_in "Date", with: @calender.Date
    fill_in "Farm name", with: @calender.Farm_Name
    fill_in "Month", with: @calender.Month
    fill_in "Pro number", with: @calender.Pro_Number
    fill_in "Season", with: @calender.Season
    fill_in "User", with: @calender.user_id
    click_on "Update Calender"

    assert_text "Calender was successfully updated"
    click_on "Back"
  end

  test "destroying a Calender" do
    visit calenders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calender was successfully destroyed"
  end
end

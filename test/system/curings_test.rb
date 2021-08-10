require "application_system_test_case"

class CuringsTest < ApplicationSystemTestCase
  setup do
    @curing = curings(:one)
  end

  test "visiting the index" do
    visit curings_url
    assert_selector "h1", text: "Curings"
  end

  test "creating a Curing" do
    visit curings_url
    click_on "New Curing"

    fill_in "Company name", with: @curing.Company_Name
    fill_in "Date", with: @curing.Date
    fill_in "Day", with: @curing.Day
    fill_in "Facility", with: @curing.Facility
    fill_in "Farm name", with: @curing.Farm_Name
    fill_in "Pro number", with: @curing.Pro_Number
    fill_in "Season", with: @curing.Season
    fill_in "Temperature", with: @curing.Temperature
    fill_in "Time", with: @curing.Time
    fill_in "User", with: @curing.user_id
    click_on "Create Curing"

    assert_text "Curing was successfully created"
    click_on "Back"
  end

  test "updating a Curing" do
    visit curings_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @curing.Company_Name
    fill_in "Date", with: @curing.Date
    fill_in "Day", with: @curing.Day
    fill_in "Facility", with: @curing.Facility
    fill_in "Farm name", with: @curing.Farm_Name
    fill_in "Pro number", with: @curing.Pro_Number
    fill_in "Season", with: @curing.Season
    fill_in "Temperature", with: @curing.Temperature
    fill_in "Time", with: @curing.Time
    fill_in "User", with: @curing.user_id
    click_on "Update Curing"

    assert_text "Curing was successfully updated"
    click_on "Back"
  end

  test "destroying a Curing" do
    visit curings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curing was successfully destroyed"
  end
end

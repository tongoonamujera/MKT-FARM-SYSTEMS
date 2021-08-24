require "application_system_test_case"

class FieldDaysTest < ApplicationSystemTestCase
  setup do
    @field_day = field_days(:one)
  end

  test "visiting the index" do
    visit field_days_url
    assert_selector "h1", text: "Field Days"
  end

  test "creating a Field day" do
    visit field_days_url
    click_on "New Field Day"

    fill_in "Company name", with: @field_day.Company_Name
    fill_in "Date", with: @field_day.Date
    fill_in "Season", with: @field_day.Season
    fill_in "Start time", with: @field_day.Start_Time
    fill_in "Focus", with: @field_day.focus
    fill_in "Place", with: @field_day.place
    click_on "Create Field day"

    assert_text "Field day was successfully created"
    click_on "Back"
  end

  test "updating a Field day" do
    visit field_days_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @field_day.Company_Name
    fill_in "Date", with: @field_day.Date
    fill_in "Season", with: @field_day.Season
    fill_in "Start time", with: @field_day.Start_Time
    fill_in "Focus", with: @field_day.focus
    fill_in "Place", with: @field_day.place
    click_on "Update Field day"

    assert_text "Field day was successfully updated"
    click_on "Back"
  end

  test "destroying a Field day" do
    visit field_days_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Field day was successfully destroyed"
  end
end

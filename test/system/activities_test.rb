require "application_system_test_case"

class ActivitiesTest < ApplicationSystemTestCase
  setup do
    @activity = activities(:one)
  end

  test "visiting the index" do
    visit activities_url
    assert_selector "h1", text: "Activities"
  end

  test "creating a Activity" do
    visit activities_url
    click_on "New Activity"

    fill_in "Activity", with: @activity.Activity
    fill_in "Company name", with: @activity.Company_Name
    fill_in "Date", with: @activity.Date
    fill_in "Farm name", with: @activity.Farm_Name
    fill_in "Pro number", with: @activity.Pro_Number
    fill_in "Season", with: @activity.Season
    fill_in "Section", with: @activity.Section
    fill_in "User", with: @activity.user_id
    click_on "Create Activity"

    assert_text "Activity was successfully created"
    click_on "Back"
  end

  test "updating a Activity" do
    visit activities_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @activity.Activity
    fill_in "Company name", with: @activity.Company_Name
    fill_in "Date", with: @activity.Date
    fill_in "Farm name", with: @activity.Farm_Name
    fill_in "Pro number", with: @activity.Pro_Number
    fill_in "Season", with: @activity.Season
    fill_in "Section", with: @activity.Section
    fill_in "User", with: @activity.user_id
    click_on "Update Activity"

    assert_text "Activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity" do
    visit activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity was successfully destroyed"
  end
end

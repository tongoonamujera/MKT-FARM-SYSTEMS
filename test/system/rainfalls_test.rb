require "application_system_test_case"

class RainfallsTest < ApplicationSystemTestCase
  setup do
    @rainfall = rainfalls(:one)
  end

  test "visiting the index" do
    visit rainfalls_url
    assert_selector "h1", text: "Rainfalls"
  end

  test "creating a Rainfall" do
    visit rainfalls_url
    click_on "New Rainfall"

    fill_in "Company name", with: @rainfall.Company_Name
    fill_in "Date", with: @rainfall.Date
    fill_in "Farm name", with: @rainfall.Farm_Name
    fill_in "Mls received", with: @rainfall.Mls_received
    fill_in "Pro number", with: @rainfall.Pro_Number
    fill_in "Season", with: @rainfall.Season
    fill_in "Section", with: @rainfall.Section
    fill_in "User", with: @rainfall.user_id
    click_on "Create Rainfall"

    assert_text "Rainfall was successfully created"
    click_on "Back"
  end

  test "updating a Rainfall" do
    visit rainfalls_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @rainfall.Company_Name
    fill_in "Date", with: @rainfall.Date
    fill_in "Farm name", with: @rainfall.Farm_Name
    fill_in "Mls received", with: @rainfall.Mls_received
    fill_in "Pro number", with: @rainfall.Pro_Number
    fill_in "Season", with: @rainfall.Season
    fill_in "Section", with: @rainfall.Section
    fill_in "User", with: @rainfall.user_id
    click_on "Update Rainfall"

    assert_text "Rainfall was successfully updated"
    click_on "Back"
  end

  test "destroying a Rainfall" do
    visit rainfalls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rainfall was successfully destroyed"
  end
end

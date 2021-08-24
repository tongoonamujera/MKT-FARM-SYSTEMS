require "application_system_test_case"

class HarvestingsTest < ApplicationSystemTestCase
  setup do
    @harvesting = harvestings(:one)
  end

  test "visiting the index" do
    visit harvestings_url
    assert_selector "h1", text: "Harvestings"
  end

  test "creating a Harvesting" do
    visit harvestings_url
    click_on "New Harvesting"

    fill_in "Compnay name", with: @harvesting.Compnay_Name
    fill_in "Crop", with: @harvesting.Crop
    fill_in "Date", with: @harvesting.Date
    fill_in "Farm name", with: @harvesting.Farm_Name
    fill_in "Kgs done", with: @harvesting.KGS_Done
    fill_in "Pro number", with: @harvesting.Pro_Number
    fill_in "Season", with: @harvesting.Season
    fill_in "Section", with: @harvesting.Section
    fill_in "User", with: @harvesting.user_id
    click_on "Create Harvesting"

    assert_text "Harvesting was successfully created"
    click_on "Back"
  end

  test "updating a Harvesting" do
    visit harvestings_url
    click_on "Edit", match: :first

    fill_in "Compnay name", with: @harvesting.Compnay_Name
    fill_in "Crop", with: @harvesting.Crop
    fill_in "Date", with: @harvesting.Date
    fill_in "Farm name", with: @harvesting.Farm_Name
    fill_in "Kgs done", with: @harvesting.KGS_Done
    fill_in "Pro number", with: @harvesting.Pro_Number
    fill_in "Season", with: @harvesting.Season
    fill_in "Section", with: @harvesting.Section
    fill_in "User", with: @harvesting.user_id
    click_on "Update Harvesting"

    assert_text "Harvesting was successfully updated"
    click_on "Back"
  end

  test "destroying a Harvesting" do
    visit harvestings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Harvesting was successfully destroyed"
  end
end

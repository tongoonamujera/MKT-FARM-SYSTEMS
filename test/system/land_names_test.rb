require "application_system_test_case"

class LandNamesTest < ApplicationSystemTestCase
  setup do
    @land_name = land_names(:one)
  end

  test "visiting the index" do
    visit land_names_url
    assert_selector "h1", text: "Land Names"
  end

  test "creating a Land name" do
    visit land_names_url
    click_on "New Land Name"

    fill_in "Company name", with: @land_name.Company_name
    fill_in "Crop", with: @land_name.Crop
    fill_in "Date", with: @land_name.Date
    fill_in "Farm namesection", with: @land_name.Farm_nameSection
    fill_in "Hectrage", with: @land_name.Hectrage
    fill_in "Pro number", with: @land_name.Pro_Number
    fill_in "Season", with: @land_name.Season
    click_on "Create Land name"

    assert_text "Land name was successfully created"
    click_on "Back"
  end

  test "updating a Land name" do
    visit land_names_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @land_name.Company_name
    fill_in "Crop", with: @land_name.Crop
    fill_in "Date", with: @land_name.Date
    fill_in "Farm namesection", with: @land_name.Farm_nameSection
    fill_in "Hectrage", with: @land_name.Hectrage
    fill_in "Pro number", with: @land_name.Pro_Number
    fill_in "Season", with: @land_name.Season
    click_on "Update Land name"

    assert_text "Land name was successfully updated"
    click_on "Back"
  end

  test "destroying a Land name" do
    visit land_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Land name was successfully destroyed"
  end
end

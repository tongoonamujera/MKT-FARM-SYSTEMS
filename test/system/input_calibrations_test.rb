require "application_system_test_case"

class InputCalibrationsTest < ApplicationSystemTestCase
  setup do
    @input_calibration = input_calibrations(:one)
  end

  test "visiting the index" do
    visit input_calibrations_url
    assert_selector "h1", text: "Input Calibrations"
  end

  test "creating a Input calibration" do
    visit input_calibrations_url
    click_on "New Input Calibration"

    fill_in "Bags used", with: @input_calibration.Bags_Used
    fill_in "Company name", with: @input_calibration.Company_Name
    fill_in "Crop", with: @input_calibration.Crop
    fill_in "Date", with: @input_calibration.Date
    fill_in "Farm name", with: @input_calibration.Farm_Name
    fill_in "Fertiiliser typefertiliser rate", with: @input_calibration.Fertiiliser_TypeFertiliser_Rate
    fill_in "Herbicide", with: @input_calibration.Herbicide
    fill_in "Herbicide rate", with: @input_calibration.Herbicide_Rate
    fill_in "Pro number", with: @input_calibration.Pro_Number
    fill_in "Season", with: @input_calibration.Season
    fill_in "Section", with: @input_calibration.Section
    fill_in "Variety", with: @input_calibration.Variety
    fill_in "User", with: @input_calibration.user_id
    click_on "Create Input calibration"

    assert_text "Input calibration was successfully created"
    click_on "Back"
  end

  test "updating a Input calibration" do
    visit input_calibrations_url
    click_on "Edit", match: :first

    fill_in "Bags used", with: @input_calibration.Bags_Used
    fill_in "Company name", with: @input_calibration.Company_Name
    fill_in "Crop", with: @input_calibration.Crop
    fill_in "Date", with: @input_calibration.Date
    fill_in "Farm name", with: @input_calibration.Farm_Name
    fill_in "Fertiiliser typefertiliser rate", with: @input_calibration.Fertiiliser_TypeFertiliser_Rate
    fill_in "Herbicide", with: @input_calibration.Herbicide
    fill_in "Herbicide rate", with: @input_calibration.Herbicide_Rate
    fill_in "Pro number", with: @input_calibration.Pro_Number
    fill_in "Season", with: @input_calibration.Season
    fill_in "Section", with: @input_calibration.Section
    fill_in "Variety", with: @input_calibration.Variety
    fill_in "User", with: @input_calibration.user_id
    click_on "Update Input calibration"

    assert_text "Input calibration was successfully updated"
    click_on "Back"
  end

  test "destroying a Input calibration" do
    visit input_calibrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Input calibration was successfully destroyed"
  end
end

require "application_system_test_case"

class RationingsTest < ApplicationSystemTestCase
  setup do
    @rationing = rationings(:one)
  end

  test "visiting the index" do
    visit rationings_url
    assert_selector "h1", text: "Rationings"
  end

  test "creating a Rationing" do
    visit rationings_url
    click_on "New Rationing"

    fill_in "Cereal name", with: @rationing.Cereal_Name
    fill_in "Company name", with: @rationing.Company_Name
    fill_in "Date", with: @rationing.Date
    fill_in "Farm name", with: @rationing.Farm_Name
    fill_in "Kgs issued", with: @rationing.KGS_Issued
    fill_in "Pro number", with: @rationing.Pro_Number
    fill_in "Season", with: @rationing.Season
    fill_in "User", with: @rationing.user_id
    click_on "Create Rationing"

    assert_text "Rationing was successfully created"
    click_on "Back"
  end

  test "updating a Rationing" do
    visit rationings_url
    click_on "Edit", match: :first

    fill_in "Cereal name", with: @rationing.Cereal_Name
    fill_in "Company name", with: @rationing.Company_Name
    fill_in "Date", with: @rationing.Date
    fill_in "Farm name", with: @rationing.Farm_Name
    fill_in "Kgs issued", with: @rationing.KGS_Issued
    fill_in "Pro number", with: @rationing.Pro_Number
    fill_in "Season", with: @rationing.Season
    fill_in "User", with: @rationing.user_id
    click_on "Update Rationing"

    assert_text "Rationing was successfully updated"
    click_on "Back"
  end

  test "destroying a Rationing" do
    visit rationings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rationing was successfully destroyed"
  end
end

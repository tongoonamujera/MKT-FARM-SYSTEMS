require "application_system_test_case"

class SeedbedsTest < ApplicationSystemTestCase
  setup do
    @seedbed = seedbeds(:one)
  end

  test "visiting the index" do
    visit seedbeds_url
    assert_selector "h1", text: "Seedbeds"
  end

  test "creating a Seedbed" do
    visit seedbeds_url
    click_on "New Seedbed"

    fill_in "Company name", with: @seedbed.Company_Name
    fill_in "Date", with: @seedbed.Date
    fill_in "Farm name", with: @seedbed.Farm_Name
    fill_in "Input amount", with: @seedbed.Input_Amount
    fill_in "Item used", with: @seedbed.Item_Used
    fill_in "Labour amount", with: @seedbed.Labour_Amount
    fill_in "Pro number", with: @seedbed.Pro_Number
    fill_in "Quantity", with: @seedbed.Quantity
    fill_in "Season", with: @seedbed.Season
    fill_in "Section", with: @seedbed.Section
    fill_in "Unit", with: @seedbed.Unit
    fill_in "User", with: @seedbed.user_id
    click_on "Create Seedbed"

    assert_text "Seedbed was successfully created"
    click_on "Back"
  end

  test "updating a Seedbed" do
    visit seedbeds_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @seedbed.Company_Name
    fill_in "Date", with: @seedbed.Date
    fill_in "Farm name", with: @seedbed.Farm_Name
    fill_in "Input amount", with: @seedbed.Input_Amount
    fill_in "Item used", with: @seedbed.Item_Used
    fill_in "Labour amount", with: @seedbed.Labour_Amount
    fill_in "Pro number", with: @seedbed.Pro_Number
    fill_in "Quantity", with: @seedbed.Quantity
    fill_in "Season", with: @seedbed.Season
    fill_in "Section", with: @seedbed.Section
    fill_in "Unit", with: @seedbed.Unit
    fill_in "User", with: @seedbed.user_id
    click_on "Update Seedbed"

    assert_text "Seedbed was successfully updated"
    click_on "Back"
  end

  test "destroying a Seedbed" do
    visit seedbeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seedbed was successfully destroyed"
  end
end

require "application_system_test_case"

class AssetsTest < ApplicationSystemTestCase
  setup do
    @asset = assets(:one)
  end

  test "visiting the index" do
    visit assets_url
    assert_selector "h1", text: "Assets"
  end

  test "creating a Asset" do
    visit assets_url
    click_on "New Asset"

    fill_in "Asset", with: @asset.Asset
    fill_in "Asset number", with: @asset.Asset_Number
    fill_in "Asset type", with: @asset.Asset_Type
    fill_in "Company name", with: @asset.Company_Name
    fill_in "Date", with: @asset.Date
    fill_in "Pro number", with: @asset.Pro_Number
    fill_in "Season", with: @asset.Season
    fill_in "Total amount", with: @asset.Total_Amount
    fill_in "Unit price", with: @asset.Unit_Price
    fill_in "User", with: @asset.user_id
    click_on "Create Asset"

    assert_text "Asset was successfully created"
    click_on "Back"
  end

  test "updating a Asset" do
    visit assets_url
    click_on "Edit", match: :first

    fill_in "Asset", with: @asset.Asset
    fill_in "Asset number", with: @asset.Asset_Number
    fill_in "Asset type", with: @asset.Asset_Type
    fill_in "Company name", with: @asset.Company_Name
    fill_in "Date", with: @asset.Date
    fill_in "Pro number", with: @asset.Pro_Number
    fill_in "Season", with: @asset.Season
    fill_in "Total amount", with: @asset.Total_Amount
    fill_in "Unit price", with: @asset.Unit_Price
    fill_in "User", with: @asset.user_id
    click_on "Update Asset"

    assert_text "Asset was successfully updated"
    click_on "Back"
  end

  test "destroying a Asset" do
    visit assets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asset was successfully destroyed"
  end
end

require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Stores"
  end

  test "creating a Store" do
    visit stores_url
    click_on "New Store"

    fill_in "Company name", with: @store.Company_Name
    fill_in "Date", with: @store.Date
    fill_in "Farm name", with: @store.Farm_Name
    fill_in "Input name", with: @store.Input_Name
    fill_in "Pro number", with: @store.Pro_Number
    fill_in "Quantity", with: @store.Quantity
    fill_in "Season", with: @store.Season
    fill_in "Total amount", with: @store.Total_Amount
    fill_in "Type", with: @store.Type
    fill_in "Unit", with: @store.Unit
    fill_in "Unit price", with: @store.Unit_Price
    fill_in "User", with: @store.user_id
    click_on "Create Store"

    assert_text "Store was successfully created"
    click_on "Back"
  end

  test "updating a Store" do
    visit stores_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @store.Company_Name
    fill_in "Date", with: @store.Date
    fill_in "Farm name", with: @store.Farm_Name
    fill_in "Input name", with: @store.Input_Name
    fill_in "Pro number", with: @store.Pro_Number
    fill_in "Quantity", with: @store.Quantity
    fill_in "Season", with: @store.Season
    fill_in "Total amount", with: @store.Total_Amount
    fill_in "Type", with: @store.Type
    fill_in "Unit", with: @store.Unit
    fill_in "Unit price", with: @store.Unit_Price
    fill_in "User", with: @store.user_id
    click_on "Update Store"

    assert_text "Store was successfully updated"
    click_on "Back"
  end

  test "destroying a Store" do
    visit stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store was successfully destroyed"
  end
end

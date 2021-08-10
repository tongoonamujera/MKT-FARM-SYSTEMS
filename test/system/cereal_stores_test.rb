require "application_system_test_case"

class CerealStoresTest < ApplicationSystemTestCase
  setup do
    @cereal_store = cereal_stores(:one)
  end

  test "visiting the index" do
    visit cereal_stores_url
    assert_selector "h1", text: "Cereal Stores"
  end

  test "creating a Cereal store" do
    visit cereal_stores_url
    click_on "New Cereal Store"

    fill_in "Company name", with: @cereal_store.Company_Name
    fill_in "Date", with: @cereal_store.Date
    fill_in "Farm name", with: @cereal_store.Farm_Name
    fill_in "Input name", with: @cereal_store.Input_Name
    fill_in "Pro number", with: @cereal_store.Pro_Number
    fill_in "Quantity", with: @cereal_store.Quantity
    fill_in "Season", with: @cereal_store.Season
    fill_in "Total amount", with: @cereal_store.Total_Amount
    fill_in "Type", with: @cereal_store.Type
    fill_in "Unit", with: @cereal_store.Unit
    fill_in "Unit price", with: @cereal_store.Unit_Price
    fill_in "User", with: @cereal_store.user_id
    click_on "Create Cereal store"

    assert_text "Cereal store was successfully created"
    click_on "Back"
  end

  test "updating a Cereal store" do
    visit cereal_stores_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @cereal_store.Company_Name
    fill_in "Date", with: @cereal_store.Date
    fill_in "Farm name", with: @cereal_store.Farm_Name
    fill_in "Input name", with: @cereal_store.Input_Name
    fill_in "Pro number", with: @cereal_store.Pro_Number
    fill_in "Quantity", with: @cereal_store.Quantity
    fill_in "Season", with: @cereal_store.Season
    fill_in "Total amount", with: @cereal_store.Total_Amount
    fill_in "Type", with: @cereal_store.Type
    fill_in "Unit", with: @cereal_store.Unit
    fill_in "Unit price", with: @cereal_store.Unit_Price
    fill_in "User", with: @cereal_store.user_id
    click_on "Update Cereal store"

    assert_text "Cereal store was successfully updated"
    click_on "Back"
  end

  test "destroying a Cereal store" do
    visit cereal_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cereal store was successfully destroyed"
  end
end

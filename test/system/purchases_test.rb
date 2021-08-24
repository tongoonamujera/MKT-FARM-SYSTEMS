require "application_system_test_case"

class PurchasesTest < ApplicationSystemTestCase
  setup do
    @purchase = purchases(:one)
  end

  test "visiting the index" do
    visit purchases_url
    assert_selector "h1", text: "Purchases"
  end

  test "creating a Purchase" do
    visit purchases_url
    click_on "New Purchase"

    fill_in "Vat", with: @purchase.VAT
    fill_in "Company name", with: @purchase.company_name
    fill_in "Date", with: @purchase.date
    fill_in "Item", with: @purchase.item
    fill_in "Pro number", with: @purchase.pro_number
    fill_in "Season", with: @purchase.season
    fill_in "Total amount", with: @purchase.total_amount
    fill_in "Total items", with: @purchase.total_items
    fill_in "Unit", with: @purchase.unit
    fill_in "Unit price", with: @purchase.unit_price
    fill_in "User", with: @purchase.user_id
    click_on "Create Purchase"

    assert_text "Purchase was successfully created"
    click_on "Back"
  end

  test "updating a Purchase" do
    visit purchases_url
    click_on "Edit", match: :first

    fill_in "Vat", with: @purchase.VAT
    fill_in "Company name", with: @purchase.company_name
    fill_in "Date", with: @purchase.date
    fill_in "Item", with: @purchase.item
    fill_in "Pro number", with: @purchase.pro_number
    fill_in "Season", with: @purchase.season
    fill_in "Total amount", with: @purchase.total_amount
    fill_in "Total items", with: @purchase.total_items
    fill_in "Unit", with: @purchase.unit
    fill_in "Unit price", with: @purchase.unit_price
    fill_in "User", with: @purchase.user_id
    click_on "Update Purchase"

    assert_text "Purchase was successfully updated"
    click_on "Back"
  end

  test "destroying a Purchase" do
    visit purchases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Purchase was successfully destroyed"
  end
end

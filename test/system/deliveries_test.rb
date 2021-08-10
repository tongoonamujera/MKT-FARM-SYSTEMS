require "application_system_test_case"

class DeliveriesTest < ApplicationSystemTestCase
  setup do
    @delivery = deliveries(:one)
  end

  test "visiting the index" do
    visit deliveries_url
    assert_selector "h1", text: "Deliveries"
  end

  test "creating a Delivery" do
    visit deliveries_url
    click_on "New Delivery"

    fill_in "Amount", with: @delivery.Amount
    fill_in "Company name", with: @delivery.Company_Name
    fill_in "Date", with: @delivery.Date
    fill_in "Delivered by", with: @delivery.Delivered_by
    fill_in "Farm name", with: @delivery.Farm_Name
    fill_in "Goods", with: @delivery.Goods
    fill_in "Pro number", with: @delivery.Pro_Number
    fill_in "Quantity", with: @delivery.Quantity
    fill_in "Season", with: @delivery.Season
    fill_in "Section", with: @delivery.Section
    fill_in "Type", with: @delivery.Type
    fill_in "User", with: @delivery.user_id
    click_on "Create Delivery"

    assert_text "Delivery was successfully created"
    click_on "Back"
  end

  test "updating a Delivery" do
    visit deliveries_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @delivery.Amount
    fill_in "Company name", with: @delivery.Company_Name
    fill_in "Date", with: @delivery.Date
    fill_in "Delivered by", with: @delivery.Delivered_by
    fill_in "Farm name", with: @delivery.Farm_Name
    fill_in "Goods", with: @delivery.Goods
    fill_in "Pro number", with: @delivery.Pro_Number
    fill_in "Quantity", with: @delivery.Quantity
    fill_in "Season", with: @delivery.Season
    fill_in "Section", with: @delivery.Section
    fill_in "Type", with: @delivery.Type
    fill_in "User", with: @delivery.user_id
    click_on "Update Delivery"

    assert_text "Delivery was successfully updated"
    click_on "Back"
  end

  test "destroying a Delivery" do
    visit deliveries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delivery was successfully destroyed"
  end
end

require "application_system_test_case"

class InputStoresUsagesTest < ApplicationSystemTestCase
  setup do
    @input_stores_usage = input_stores_usages(:one)
  end

  test "visiting the index" do
    visit input_stores_usages_url
    assert_selector "h1", text: "Input Stores Usages"
  end

  test "creating a Input stores usage" do
    visit input_stores_usages_url
    click_on "New Input Stores Usage"

    fill_in "Company name", with: @input_stores_usage.company_name
    fill_in "Date", with: @input_stores_usage.date
    check "Delete" if @input_stores_usage.delete
    fill_in "Farm name", with: @input_stores_usage.farm_name
    fill_in "Input name", with: @input_stores_usage.input_name
    fill_in "Profile number", with: @input_stores_usage.profile_number
    fill_in "Quantity used", with: @input_stores_usage.quantity_used
    fill_in "Season", with: @input_stores_usage.season
    fill_in "Total amount", with: @input_stores_usage.total_amount
    fill_in "Unit", with: @input_stores_usage.unit
    fill_in "User", with: @input_stores_usage.user_id
    click_on "Create Input stores usage"

    assert_text "Input stores usage was successfully created"
    click_on "Back"
  end

  test "updating a Input stores usage" do
    visit input_stores_usages_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @input_stores_usage.company_name
    fill_in "Date", with: @input_stores_usage.date
    check "Delete" if @input_stores_usage.delete
    fill_in "Farm name", with: @input_stores_usage.farm_name
    fill_in "Input name", with: @input_stores_usage.input_name
    fill_in "Profile number", with: @input_stores_usage.profile_number
    fill_in "Quantity used", with: @input_stores_usage.quantity_used
    fill_in "Season", with: @input_stores_usage.season
    fill_in "Total amount", with: @input_stores_usage.total_amount
    fill_in "Unit", with: @input_stores_usage.unit
    fill_in "User", with: @input_stores_usage.user_id
    click_on "Update Input stores usage"

    assert_text "Input stores usage was successfully updated"
    click_on "Back"
  end

  test "destroying a Input stores usage" do
    visit input_stores_usages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Input stores usage was successfully destroyed"
  end
end

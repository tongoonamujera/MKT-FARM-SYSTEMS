require "application_system_test_case"

class DailyRequisitionsTest < ApplicationSystemTestCase
  setup do
    @daily_requisition = daily_requisitions(:one)
  end

  test "visiting the index" do
    visit daily_requisitions_url
    assert_selector "h1", text: "Daily Requisitions"
  end

  test "creating a Daily requisition" do
    visit daily_requisitions_url
    click_on "New Daily Requisition"

    fill_in "Company name", with: @daily_requisition.Company_Name
    fill_in "Date", with: @daily_requisition.Date
    fill_in "Farm name", with: @daily_requisition.Farm_Name
    fill_in "Pro number", with: @daily_requisition.Pro_Number
    fill_in "Requisition", with: @daily_requisition.Requisition
    fill_in "Season", with: @daily_requisition.Season
    fill_in "User", with: @daily_requisition.user_id
    click_on "Create Daily requisition"

    assert_text "Daily requisition was successfully created"
    click_on "Back"
  end

  test "updating a Daily requisition" do
    visit daily_requisitions_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @daily_requisition.Company_Name
    fill_in "Date", with: @daily_requisition.Date
    fill_in "Farm name", with: @daily_requisition.Farm_Name
    fill_in "Pro number", with: @daily_requisition.Pro_Number
    fill_in "Requisition", with: @daily_requisition.Requisition
    fill_in "Season", with: @daily_requisition.Season
    fill_in "User", with: @daily_requisition.user_id
    click_on "Update Daily requisition"

    assert_text "Daily requisition was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily requisition" do
    visit daily_requisitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily requisition was successfully destroyed"
  end
end

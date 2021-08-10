require "application_system_test_case"

class WagesTest < ApplicationSystemTestCase
  setup do
    @wage = wages(:one)
  end

  test "visiting the index" do
    visit wages_url
    assert_selector "h1", text: "Wages"
  end

  test "creating a Wage" do
    visit wages_url
    click_on "New Wage"

    fill_in "Company name", with: @wage.Company_Name
    fill_in "Date", with: @wage.Date
    fill_in "Farm name", with: @wage.Farm_Name
    fill_in "Pro number", with: @wage.Pro_Number
    fill_in "Season", with: @wage.Season
    fill_in "Total amount", with: @wage.Total_Amount
    fill_in "User", with: @wage.user_id
    click_on "Create Wage"

    assert_text "Wage was successfully created"
    click_on "Back"
  end

  test "updating a Wage" do
    visit wages_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @wage.Company_Name
    fill_in "Date", with: @wage.Date
    fill_in "Farm name", with: @wage.Farm_Name
    fill_in "Pro number", with: @wage.Pro_Number
    fill_in "Season", with: @wage.Season
    fill_in "Total amount", with: @wage.Total_Amount
    fill_in "User", with: @wage.user_id
    click_on "Update Wage"

    assert_text "Wage was successfully updated"
    click_on "Back"
  end

  test "destroying a Wage" do
    visit wages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wage was successfully destroyed"
  end
end

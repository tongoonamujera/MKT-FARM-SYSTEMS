require "application_system_test_case"

class CashflowsTest < ApplicationSystemTestCase
  setup do
    @cashflow = cashflows(:one)
  end

  test "visiting the index" do
    visit cashflows_url
    assert_selector "h1", text: "Cashflows"
  end

  test "creating a Cashflow" do
    visit cashflows_url
    click_on "New Cashflow"

    fill_in "Company name", with: @cashflow.Company_Name
    fill_in "Date", with: @cashflow.Date
    fill_in "Grower name", with: @cashflow.Grower_Name
    fill_in "Hectrage", with: @cashflow.Hectrage
    fill_in "Input name", with: @cashflow.Input_Name
    fill_in "Month", with: @cashflow.Month
    fill_in "Operation", with: @cashflow.Operation
    fill_in "Pro number", with: @cashflow.Pro_Number
    fill_in "Season", with: @cashflow.Season
    fill_in "Total amount", with: @cashflow.Total_Amount
    fill_in "Unit price", with: @cashflow.Unit_Price
    fill_in "Unity", with: @cashflow.Unity
    fill_in "Quantity per hectre", with: @cashflow.quantity_per_hectre
    fill_in "User", with: @cashflow.user_id
    click_on "Create Cashflow"

    assert_text "Cashflow was successfully created"
    click_on "Back"
  end

  test "updating a Cashflow" do
    visit cashflows_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @cashflow.Company_Name
    fill_in "Date", with: @cashflow.Date
    fill_in "Grower name", with: @cashflow.Grower_Name
    fill_in "Hectrage", with: @cashflow.Hectrage
    fill_in "Input name", with: @cashflow.Input_Name
    fill_in "Month", with: @cashflow.Month
    fill_in "Operation", with: @cashflow.Operation
    fill_in "Pro number", with: @cashflow.Pro_Number
    fill_in "Season", with: @cashflow.Season
    fill_in "Total amount", with: @cashflow.Total_Amount
    fill_in "Unit price", with: @cashflow.Unit_Price
    fill_in "Unity", with: @cashflow.Unity
    fill_in "Quantity per hectre", with: @cashflow.quantity_per_hectre
    fill_in "User", with: @cashflow.user_id
    click_on "Update Cashflow"

    assert_text "Cashflow was successfully updated"
    click_on "Back"
  end

  test "destroying a Cashflow" do
    visit cashflows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cashflow was successfully destroyed"
  end
end

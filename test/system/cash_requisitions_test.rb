require "application_system_test_case"

class CashRequisitionsTest < ApplicationSystemTestCase
  setup do
    @cash_requisition = cash_requisitions(:one)
  end

  test "visiting the index" do
    visit cash_requisitions_url
    assert_selector "h1", text: "Cash Requisitions"
  end

  test "creating a Cash requisition" do
    visit cash_requisitions_url
    click_on "New Cash Requisition"

    fill_in "Amount issued", with: @cash_requisition.Amount_Issued
    fill_in "Amount requested", with: @cash_requisition.Amount_Requested
    fill_in "Company name", with: @cash_requisition.Company_Name
    fill_in "Date", with: @cash_requisition.Date
    fill_in "Employee name", with: @cash_requisition.Employee_Name
    fill_in "Farm name", with: @cash_requisition.Farm_Name
    fill_in "Pay from", with: @cash_requisition.Pay_From
    fill_in "Pay to", with: @cash_requisition.Pay_To
    fill_in "Pro number", with: @cash_requisition.Pro_Number
    fill_in "Season", with: @cash_requisition.Season
    fill_in "User", with: @cash_requisition.user_id
    click_on "Create Cash requisition"

    assert_text "Cash requisition was successfully created"
    click_on "Back"
  end

  test "updating a Cash requisition" do
    visit cash_requisitions_url
    click_on "Edit", match: :first

    fill_in "Amount issued", with: @cash_requisition.Amount_Issued
    fill_in "Amount requested", with: @cash_requisition.Amount_Requested
    fill_in "Company name", with: @cash_requisition.Company_Name
    fill_in "Date", with: @cash_requisition.Date
    fill_in "Employee name", with: @cash_requisition.Employee_Name
    fill_in "Farm name", with: @cash_requisition.Farm_Name
    fill_in "Pay from", with: @cash_requisition.Pay_From
    fill_in "Pay to", with: @cash_requisition.Pay_To
    fill_in "Pro number", with: @cash_requisition.Pro_Number
    fill_in "Season", with: @cash_requisition.Season
    fill_in "User", with: @cash_requisition.user_id
    click_on "Update Cash requisition"

    assert_text "Cash requisition was successfully updated"
    click_on "Back"
  end

  test "destroying a Cash requisition" do
    visit cash_requisitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cash requisition was successfully destroyed"
  end
end

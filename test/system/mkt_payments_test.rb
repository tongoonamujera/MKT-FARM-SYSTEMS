require "application_system_test_case"

class MktPaymentsTest < ApplicationSystemTestCase
  setup do
    @mkt_payment = mkt_payments(:one)
  end

  test "visiting the index" do
    visit mkt_payments_url
    assert_selector "h1", text: "Mkt Payments"
  end

  test "creating a Mkt payment" do
    visit mkt_payments_url
    click_on "New Mkt Payment"

    fill_in "Amount paid", with: @mkt_payment.Amount_Paid
    fill_in "Company name", with: @mkt_payment.Company_Name
    fill_in "Date", with: @mkt_payment.Date
    fill_in "From", with: @mkt_payment.From
    fill_in "Paid by", with: @mkt_payment.Paid_by
    fill_in "Pro number", with: @mkt_payment.Pro_number
    fill_in "Receipt number", with: @mkt_payment.Receipt_Number
    fill_in "Service", with: @mkt_payment.Service
    fill_in "Service rendered", with: @mkt_payment.Service_Rendered
    fill_in "To", with: @mkt_payment.To
    click_on "Create Mkt payment"

    assert_text "Mkt payment was successfully created"
    click_on "Back"
  end

  test "updating a Mkt payment" do
    visit mkt_payments_url
    click_on "Edit", match: :first

    fill_in "Amount paid", with: @mkt_payment.Amount_Paid
    fill_in "Company name", with: @mkt_payment.Company_Name
    fill_in "Date", with: @mkt_payment.Date
    fill_in "From", with: @mkt_payment.From
    fill_in "Paid by", with: @mkt_payment.Paid_by
    fill_in "Pro number", with: @mkt_payment.Pro_number
    fill_in "Receipt number", with: @mkt_payment.Receipt_Number
    fill_in "Service", with: @mkt_payment.Service
    fill_in "Service rendered", with: @mkt_payment.Service_Rendered
    fill_in "To", with: @mkt_payment.To
    click_on "Update Mkt payment"

    assert_text "Mkt payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Mkt payment" do
    visit mkt_payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mkt payment was successfully destroyed"
  end
end

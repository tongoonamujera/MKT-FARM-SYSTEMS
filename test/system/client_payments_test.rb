require "application_system_test_case"

class ClientPaymentsTest < ApplicationSystemTestCase
  setup do
    @client_payment = client_payments(:one)
  end

  test "visiting the index" do
    visit client_payments_url
    assert_selector "h1", text: "Client Payments"
  end

  test "creating a Client payment" do
    visit client_payments_url
    click_on "New Client Payment"

    fill_in "Amount-paid", with: @client_payment.Amount-Paid
    fill_in "Balance", with: @client_payment.Balance
    fill_in "Category", with: @client_payment.Category
    fill_in "Company-name", with: @client_payment.Company-Name
    fill_in "Date", with: @client_payment.Date
    fill_in "Pro-number", with: @client_payment.Pro-Number
    fill_in "Receipt-number", with: @client_payment.Receipt-Number
    fill_in "Status", with: @client_payment.Status
    click_on "Create Client payment"

    assert_text "Client payment was successfully created"
    click_on "Back"
  end

  test "updating a Client payment" do
    visit client_payments_url
    click_on "Edit", match: :first

    fill_in "Amount-paid", with: @client_payment.Amount-Paid
    fill_in "Balance", with: @client_payment.Balance
    fill_in "Category", with: @client_payment.Category
    fill_in "Company-name", with: @client_payment.Company-Name
    fill_in "Date", with: @client_payment.Date
    fill_in "Pro-number", with: @client_payment.Pro-Number
    fill_in "Receipt-number", with: @client_payment.Receipt-Number
    fill_in "Status", with: @client_payment.Status
    click_on "Update Client payment"

    assert_text "Client payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Client payment" do
    visit client_payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client payment was successfully destroyed"
  end
end

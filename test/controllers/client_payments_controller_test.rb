require 'test_helper'

class ClientPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_payment = client_payments(:one)
  end

  test "should get index" do
    get client_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_client_payment_url
    assert_response :success
  end

  test "should create client_payment" do
    assert_difference('ClientPayment.count') do
      post client_payments_url, params: { client_payment: { Amount-Paid: @client_payment.Amount-Paid, Balance: @client_payment.Balance, Category: @client_payment.Category, Company-Name: @client_payment.Company-Name, Date: @client_payment.Date, Pro-Number: @client_payment.Pro-Number, Receipt-Number: @client_payment.Receipt-Number, Status: @client_payment.Status } }
    end

    assert_redirected_to client_payment_url(ClientPayment.last)
  end

  test "should show client_payment" do
    get client_payment_url(@client_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_payment_url(@client_payment)
    assert_response :success
  end

  test "should update client_payment" do
    patch client_payment_url(@client_payment), params: { client_payment: { Amount-Paid: @client_payment.Amount-Paid, Balance: @client_payment.Balance, Category: @client_payment.Category, Company-Name: @client_payment.Company-Name, Date: @client_payment.Date, Pro-Number: @client_payment.Pro-Number, Receipt-Number: @client_payment.Receipt-Number, Status: @client_payment.Status } }
    assert_redirected_to client_payment_url(@client_payment)
  end

  test "should destroy client_payment" do
    assert_difference('ClientPayment.count', -1) do
      delete client_payment_url(@client_payment)
    end

    assert_redirected_to client_payments_url
  end
end

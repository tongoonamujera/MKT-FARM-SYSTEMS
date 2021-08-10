require 'test_helper'

class MktPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mkt_payment = mkt_payments(:one)
  end

  test "should get index" do
    get mkt_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_mkt_payment_url
    assert_response :success
  end

  test "should create mkt_payment" do
    assert_difference('MktPayment.count') do
      post mkt_payments_url, params: { mkt_payment: { Amount_Paid: @mkt_payment.Amount_Paid, Company_Name: @mkt_payment.Company_Name, Date: @mkt_payment.Date, From: @mkt_payment.From, Paid_by: @mkt_payment.Paid_by, Pro_number: @mkt_payment.Pro_number, Receipt_Number: @mkt_payment.Receipt_Number, Service: @mkt_payment.Service, Service_Rendered: @mkt_payment.Service_Rendered, To: @mkt_payment.To } }
    end

    assert_redirected_to mkt_payment_url(MktPayment.last)
  end

  test "should show mkt_payment" do
    get mkt_payment_url(@mkt_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_mkt_payment_url(@mkt_payment)
    assert_response :success
  end

  test "should update mkt_payment" do
    patch mkt_payment_url(@mkt_payment), params: { mkt_payment: { Amount_Paid: @mkt_payment.Amount_Paid, Company_Name: @mkt_payment.Company_Name, Date: @mkt_payment.Date, From: @mkt_payment.From, Paid_by: @mkt_payment.Paid_by, Pro_number: @mkt_payment.Pro_number, Receipt_Number: @mkt_payment.Receipt_Number, Service: @mkt_payment.Service, Service_Rendered: @mkt_payment.Service_Rendered, To: @mkt_payment.To } }
    assert_redirected_to mkt_payment_url(@mkt_payment)
  end

  test "should destroy mkt_payment" do
    assert_difference('MktPayment.count', -1) do
      delete mkt_payment_url(@mkt_payment)
    end

    assert_redirected_to mkt_payments_url
  end
end

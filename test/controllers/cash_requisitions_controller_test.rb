require 'test_helper'

class CashRequisitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cash_requisition = cash_requisitions(:one)
  end

  test "should get index" do
    get cash_requisitions_url
    assert_response :success
  end

  test "should get new" do
    get new_cash_requisition_url
    assert_response :success
  end

  test "should create cash_requisition" do
    assert_difference('CashRequisition.count') do
      post cash_requisitions_url, params: { cash_requisition: { Amount_Issued: @cash_requisition.Amount_Issued, Amount_Requested: @cash_requisition.Amount_Requested, Company_Name: @cash_requisition.Company_Name, Date: @cash_requisition.Date, Employee_Name: @cash_requisition.Employee_Name, Farm_Name: @cash_requisition.Farm_Name, Pay_From: @cash_requisition.Pay_From, Pay_To: @cash_requisition.Pay_To, Pro_Number: @cash_requisition.Pro_Number, Season: @cash_requisition.Season, user_id: @cash_requisition.user_id } }
    end

    assert_redirected_to cash_requisition_url(CashRequisition.last)
  end

  test "should show cash_requisition" do
    get cash_requisition_url(@cash_requisition)
    assert_response :success
  end

  test "should get edit" do
    get edit_cash_requisition_url(@cash_requisition)
    assert_response :success
  end

  test "should update cash_requisition" do
    patch cash_requisition_url(@cash_requisition), params: { cash_requisition: { Amount_Issued: @cash_requisition.Amount_Issued, Amount_Requested: @cash_requisition.Amount_Requested, Company_Name: @cash_requisition.Company_Name, Date: @cash_requisition.Date, Employee_Name: @cash_requisition.Employee_Name, Farm_Name: @cash_requisition.Farm_Name, Pay_From: @cash_requisition.Pay_From, Pay_To: @cash_requisition.Pay_To, Pro_Number: @cash_requisition.Pro_Number, Season: @cash_requisition.Season, user_id: @cash_requisition.user_id } }
    assert_redirected_to cash_requisition_url(@cash_requisition)
  end

  test "should destroy cash_requisition" do
    assert_difference('CashRequisition.count', -1) do
      delete cash_requisition_url(@cash_requisition)
    end

    assert_redirected_to cash_requisitions_url
  end
end

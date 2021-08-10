require 'test_helper'

class DailyRequisitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_requisition = daily_requisitions(:one)
  end

  test "should get index" do
    get daily_requisitions_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_requisition_url
    assert_response :success
  end

  test "should create daily_requisition" do
    assert_difference('DailyRequisition.count') do
      post daily_requisitions_url, params: { daily_requisition: { Company_Name: @daily_requisition.Company_Name, Date: @daily_requisition.Date, Farm_Name: @daily_requisition.Farm_Name, Pro_Number: @daily_requisition.Pro_Number, Requisition: @daily_requisition.Requisition, Season: @daily_requisition.Season, user_id: @daily_requisition.user_id } }
    end

    assert_redirected_to daily_requisition_url(DailyRequisition.last)
  end

  test "should show daily_requisition" do
    get daily_requisition_url(@daily_requisition)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_requisition_url(@daily_requisition)
    assert_response :success
  end

  test "should update daily_requisition" do
    patch daily_requisition_url(@daily_requisition), params: { daily_requisition: { Company_Name: @daily_requisition.Company_Name, Date: @daily_requisition.Date, Farm_Name: @daily_requisition.Farm_Name, Pro_Number: @daily_requisition.Pro_Number, Requisition: @daily_requisition.Requisition, Season: @daily_requisition.Season, user_id: @daily_requisition.user_id } }
    assert_redirected_to daily_requisition_url(@daily_requisition)
  end

  test "should destroy daily_requisition" do
    assert_difference('DailyRequisition.count', -1) do
      delete daily_requisition_url(@daily_requisition)
    end

    assert_redirected_to daily_requisitions_url
  end
end

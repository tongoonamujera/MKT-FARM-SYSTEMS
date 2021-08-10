require 'test_helper'

class WagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wage = wages(:one)
  end

  test "should get index" do
    get wages_url
    assert_response :success
  end

  test "should get new" do
    get new_wage_url
    assert_response :success
  end

  test "should create wage" do
    assert_difference('Wage.count') do
      post wages_url, params: { wage: { Company_Name: @wage.Company_Name, Date: @wage.Date, Farm_Name: @wage.Farm_Name, Pro_Number: @wage.Pro_Number, Season: @wage.Season, Total_Amount: @wage.Total_Amount, user_id: @wage.user_id } }
    end

    assert_redirected_to wage_url(Wage.last)
  end

  test "should show wage" do
    get wage_url(@wage)
    assert_response :success
  end

  test "should get edit" do
    get edit_wage_url(@wage)
    assert_response :success
  end

  test "should update wage" do
    patch wage_url(@wage), params: { wage: { Company_Name: @wage.Company_Name, Date: @wage.Date, Farm_Name: @wage.Farm_Name, Pro_Number: @wage.Pro_Number, Season: @wage.Season, Total_Amount: @wage.Total_Amount, user_id: @wage.user_id } }
    assert_redirected_to wage_url(@wage)
  end

  test "should destroy wage" do
    assert_difference('Wage.count', -1) do
      delete wage_url(@wage)
    end

    assert_redirected_to wages_url
  end
end

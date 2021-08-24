require 'test_helper'

class RationingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rationing = rationings(:one)
  end

  test "should get index" do
    get rationings_url
    assert_response :success
  end

  test "should get new" do
    get new_rationing_url
    assert_response :success
  end

  test "should create rationing" do
    assert_difference('Rationing.count') do
      post rationings_url, params: { rationing: { Cereal_Name: @rationing.Cereal_Name, Company_Name: @rationing.Company_Name, Date: @rationing.Date, Farm_Name: @rationing.Farm_Name, KGS_Issued: @rationing.KGS_Issued, Pro_Number: @rationing.Pro_Number, Season: @rationing.Season, user_id: @rationing.user_id } }
    end

    assert_redirected_to rationing_url(Rationing.last)
  end

  test "should show rationing" do
    get rationing_url(@rationing)
    assert_response :success
  end

  test "should get edit" do
    get edit_rationing_url(@rationing)
    assert_response :success
  end

  test "should update rationing" do
    patch rationing_url(@rationing), params: { rationing: { Cereal_Name: @rationing.Cereal_Name, Company_Name: @rationing.Company_Name, Date: @rationing.Date, Farm_Name: @rationing.Farm_Name, KGS_Issued: @rationing.KGS_Issued, Pro_Number: @rationing.Pro_Number, Season: @rationing.Season, user_id: @rationing.user_id } }
    assert_redirected_to rationing_url(@rationing)
  end

  test "should destroy rationing" do
    assert_difference('Rationing.count', -1) do
      delete rationing_url(@rationing)
    end

    assert_redirected_to rationings_url
  end
end

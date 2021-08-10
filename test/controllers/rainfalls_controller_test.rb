require 'test_helper'

class RainfallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rainfall = rainfalls(:one)
  end

  test "should get index" do
    get rainfalls_url
    assert_response :success
  end

  test "should get new" do
    get new_rainfall_url
    assert_response :success
  end

  test "should create rainfall" do
    assert_difference('Rainfall.count') do
      post rainfalls_url, params: { rainfall: { Company_Name: @rainfall.Company_Name, Date: @rainfall.Date, Farm_Name: @rainfall.Farm_Name, Mls_received: @rainfall.Mls_received, Pro_Number: @rainfall.Pro_Number, Season: @rainfall.Season, Section: @rainfall.Section, user_id: @rainfall.user_id } }
    end

    assert_redirected_to rainfall_url(Rainfall.last)
  end

  test "should show rainfall" do
    get rainfall_url(@rainfall)
    assert_response :success
  end

  test "should get edit" do
    get edit_rainfall_url(@rainfall)
    assert_response :success
  end

  test "should update rainfall" do
    patch rainfall_url(@rainfall), params: { rainfall: { Company_Name: @rainfall.Company_Name, Date: @rainfall.Date, Farm_Name: @rainfall.Farm_Name, Mls_received: @rainfall.Mls_received, Pro_Number: @rainfall.Pro_Number, Season: @rainfall.Season, Section: @rainfall.Section, user_id: @rainfall.user_id } }
    assert_redirected_to rainfall_url(@rainfall)
  end

  test "should destroy rainfall" do
    assert_difference('Rainfall.count', -1) do
      delete rainfall_url(@rainfall)
    end

    assert_redirected_to rainfalls_url
  end
end

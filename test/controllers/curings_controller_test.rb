require 'test_helper'

class CuringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curing = curings(:one)
  end

  test "should get index" do
    get curings_url
    assert_response :success
  end

  test "should get new" do
    get new_curing_url
    assert_response :success
  end

  test "should create curing" do
    assert_difference('Curing.count') do
      post curings_url, params: { curing: { Company_Name: @curing.Company_Name, Date: @curing.Date, Day: @curing.Day, Facility: @curing.Facility, Farm_Name: @curing.Farm_Name, Pro_Number: @curing.Pro_Number, Season: @curing.Season, Temperature: @curing.Temperature, Time: @curing.Time, user_id: @curing.user_id } }
    end

    assert_redirected_to curing_url(Curing.last)
  end

  test "should show curing" do
    get curing_url(@curing)
    assert_response :success
  end

  test "should get edit" do
    get edit_curing_url(@curing)
    assert_response :success
  end

  test "should update curing" do
    patch curing_url(@curing), params: { curing: { Company_Name: @curing.Company_Name, Date: @curing.Date, Day: @curing.Day, Facility: @curing.Facility, Farm_Name: @curing.Farm_Name, Pro_Number: @curing.Pro_Number, Season: @curing.Season, Temperature: @curing.Temperature, Time: @curing.Time, user_id: @curing.user_id } }
    assert_redirected_to curing_url(@curing)
  end

  test "should destroy curing" do
    assert_difference('Curing.count', -1) do
      delete curing_url(@curing)
    end

    assert_redirected_to curings_url
  end
end

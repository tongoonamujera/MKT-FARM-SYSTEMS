require 'test_helper'

class FieldDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @field_day = field_days(:one)
  end

  test "should get index" do
    get field_days_url
    assert_response :success
  end

  test "should get new" do
    get new_field_day_url
    assert_response :success
  end

  test "should create field_day" do
    assert_difference('FieldDay.count') do
      post field_days_url, params: { field_day: { Company_Name: @field_day.Company_Name, Date: @field_day.Date, Season: @field_day.Season, Start_Time: @field_day.Start_Time, focus: @field_day.focus, place: @field_day.place } }
    end

    assert_redirected_to field_day_url(FieldDay.last)
  end

  test "should show field_day" do
    get field_day_url(@field_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_field_day_url(@field_day)
    assert_response :success
  end

  test "should update field_day" do
    patch field_day_url(@field_day), params: { field_day: { Company_Name: @field_day.Company_Name, Date: @field_day.Date, Season: @field_day.Season, Start_Time: @field_day.Start_Time, focus: @field_day.focus, place: @field_day.place } }
    assert_redirected_to field_day_url(@field_day)
  end

  test "should destroy field_day" do
    assert_difference('FieldDay.count', -1) do
      delete field_day_url(@field_day)
    end

    assert_redirected_to field_days_url
  end
end

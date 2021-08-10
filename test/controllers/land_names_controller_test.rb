require 'test_helper'

class LandNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @land_name = land_names(:one)
  end

  test "should get index" do
    get land_names_url
    assert_response :success
  end

  test "should get new" do
    get new_land_name_url
    assert_response :success
  end

  test "should create land_name" do
    assert_difference('LandName.count') do
      post land_names_url, params: { land_name: { Company_name: @land_name.Company_name, Crop: @land_name.Crop, Date: @land_name.Date, Farm_nameSection: @land_name.Farm_nameSection, Hectrage: @land_name.Hectrage, Pro_Number: @land_name.Pro_Number, Season: @land_name.Season } }
    end

    assert_redirected_to land_name_url(LandName.last)
  end

  test "should show land_name" do
    get land_name_url(@land_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_land_name_url(@land_name)
    assert_response :success
  end

  test "should update land_name" do
    patch land_name_url(@land_name), params: { land_name: { Company_name: @land_name.Company_name, Crop: @land_name.Crop, Date: @land_name.Date, Farm_nameSection: @land_name.Farm_nameSection, Hectrage: @land_name.Hectrage, Pro_Number: @land_name.Pro_Number, Season: @land_name.Season } }
    assert_redirected_to land_name_url(@land_name)
  end

  test "should destroy land_name" do
    assert_difference('LandName.count', -1) do
      delete land_name_url(@land_name)
    end

    assert_redirected_to land_names_url
  end
end

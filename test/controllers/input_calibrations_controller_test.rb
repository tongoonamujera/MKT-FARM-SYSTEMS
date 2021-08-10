require 'test_helper'

class InputCalibrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @input_calibration = input_calibrations(:one)
  end

  test "should get index" do
    get input_calibrations_url
    assert_response :success
  end

  test "should get new" do
    get new_input_calibration_url
    assert_response :success
  end

  test "should create input_calibration" do
    assert_difference('InputCalibration.count') do
      post input_calibrations_url, params: { input_calibration: { Bags_Used: @input_calibration.Bags_Used, Company_Name: @input_calibration.Company_Name, Crop: @input_calibration.Crop, Date: @input_calibration.Date, Farm_Name: @input_calibration.Farm_Name, Fertiiliser_TypeFertiliser_Rate: @input_calibration.Fertiiliser_TypeFertiliser_Rate, Herbicide: @input_calibration.Herbicide, Herbicide_Rate: @input_calibration.Herbicide_Rate, Pro_Number: @input_calibration.Pro_Number, Season: @input_calibration.Season, Section: @input_calibration.Section, Variety: @input_calibration.Variety, user_id: @input_calibration.user_id } }
    end

    assert_redirected_to input_calibration_url(InputCalibration.last)
  end

  test "should show input_calibration" do
    get input_calibration_url(@input_calibration)
    assert_response :success
  end

  test "should get edit" do
    get edit_input_calibration_url(@input_calibration)
    assert_response :success
  end

  test "should update input_calibration" do
    patch input_calibration_url(@input_calibration), params: { input_calibration: { Bags_Used: @input_calibration.Bags_Used, Company_Name: @input_calibration.Company_Name, Crop: @input_calibration.Crop, Date: @input_calibration.Date, Farm_Name: @input_calibration.Farm_Name, Fertiiliser_TypeFertiliser_Rate: @input_calibration.Fertiiliser_TypeFertiliser_Rate, Herbicide: @input_calibration.Herbicide, Herbicide_Rate: @input_calibration.Herbicide_Rate, Pro_Number: @input_calibration.Pro_Number, Season: @input_calibration.Season, Section: @input_calibration.Section, Variety: @input_calibration.Variety, user_id: @input_calibration.user_id } }
    assert_redirected_to input_calibration_url(@input_calibration)
  end

  test "should destroy input_calibration" do
    assert_difference('InputCalibration.count', -1) do
      delete input_calibration_url(@input_calibration)
    end

    assert_redirected_to input_calibrations_url
  end
end

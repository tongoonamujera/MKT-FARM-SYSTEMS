require 'test_helper'

class HarvestingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harvesting = harvestings(:one)
  end

  test "should get index" do
    get harvestings_url
    assert_response :success
  end

  test "should get new" do
    get new_harvesting_url
    assert_response :success
  end

  test "should create harvesting" do
    assert_difference('Harvesting.count') do
      post harvestings_url, params: { harvesting: { Compnay_Name: @harvesting.Compnay_Name, Crop: @harvesting.Crop, Date: @harvesting.Date, Farm_Name: @harvesting.Farm_Name, KGS_Done: @harvesting.KGS_Done, Pro_Number: @harvesting.Pro_Number, Season: @harvesting.Season, Section: @harvesting.Section, user_id: @harvesting.user_id } }
    end

    assert_redirected_to harvesting_url(Harvesting.last)
  end

  test "should show harvesting" do
    get harvesting_url(@harvesting)
    assert_response :success
  end

  test "should get edit" do
    get edit_harvesting_url(@harvesting)
    assert_response :success
  end

  test "should update harvesting" do
    patch harvesting_url(@harvesting), params: { harvesting: { Compnay_Name: @harvesting.Compnay_Name, Crop: @harvesting.Crop, Date: @harvesting.Date, Farm_Name: @harvesting.Farm_Name, KGS_Done: @harvesting.KGS_Done, Pro_Number: @harvesting.Pro_Number, Season: @harvesting.Season, Section: @harvesting.Section, user_id: @harvesting.user_id } }
    assert_redirected_to harvesting_url(@harvesting)
  end

  test "should destroy harvesting" do
    assert_difference('Harvesting.count', -1) do
      delete harvesting_url(@harvesting)
    end

    assert_redirected_to harvestings_url
  end
end

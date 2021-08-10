require 'test_helper'

class SeedbedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seedbed = seedbeds(:one)
  end

  test "should get index" do
    get seedbeds_url
    assert_response :success
  end

  test "should get new" do
    get new_seedbed_url
    assert_response :success
  end

  test "should create seedbed" do
    assert_difference('Seedbed.count') do
      post seedbeds_url, params: { seedbed: { Company_Name: @seedbed.Company_Name, Date: @seedbed.Date, Farm_Name: @seedbed.Farm_Name, Input_Amount: @seedbed.Input_Amount, Item_Used: @seedbed.Item_Used, Labour_Amount: @seedbed.Labour_Amount, Pro_Number: @seedbed.Pro_Number, Quantity: @seedbed.Quantity, Season: @seedbed.Season, Section: @seedbed.Section, Unit: @seedbed.Unit, user_id: @seedbed.user_id } }
    end

    assert_redirected_to seedbed_url(Seedbed.last)
  end

  test "should show seedbed" do
    get seedbed_url(@seedbed)
    assert_response :success
  end

  test "should get edit" do
    get edit_seedbed_url(@seedbed)
    assert_response :success
  end

  test "should update seedbed" do
    patch seedbed_url(@seedbed), params: { seedbed: { Company_Name: @seedbed.Company_Name, Date: @seedbed.Date, Farm_Name: @seedbed.Farm_Name, Input_Amount: @seedbed.Input_Amount, Item_Used: @seedbed.Item_Used, Labour_Amount: @seedbed.Labour_Amount, Pro_Number: @seedbed.Pro_Number, Quantity: @seedbed.Quantity, Season: @seedbed.Season, Section: @seedbed.Section, Unit: @seedbed.Unit, user_id: @seedbed.user_id } }
    assert_redirected_to seedbed_url(@seedbed)
  end

  test "should destroy seedbed" do
    assert_difference('Seedbed.count', -1) do
      delete seedbed_url(@seedbed)
    end

    assert_redirected_to seedbeds_url
  end
end

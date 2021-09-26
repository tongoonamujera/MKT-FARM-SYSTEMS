require 'test_helper'

class FarmNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farm_name = farm_names(:one)
  end

  test "should get index" do
    get farm_names_url
    assert_response :success
  end

  test "should get new" do
    get new_farm_name_url
    assert_response :success
  end

  test "should create farm_name" do
    assert_difference('FarmName.count') do
      post farm_names_url, params: { farm_name: { farm_name: @farm_name.farm_name, user_id: @farm_name.user_id } }
    end

    assert_redirected_to farm_name_url(FarmName.last)
  end

  test "should show farm_name" do
    get farm_name_url(@farm_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_farm_name_url(@farm_name)
    assert_response :success
  end

  test "should update farm_name" do
    patch farm_name_url(@farm_name), params: { farm_name: { farm_name: @farm_name.farm_name, user_id: @farm_name.user_id } }
    assert_redirected_to farm_name_url(@farm_name)
  end

  test "should destroy farm_name" do
    assert_difference('FarmName.count', -1) do
      delete farm_name_url(@farm_name)
    end

    assert_redirected_to farm_names_url
  end
end

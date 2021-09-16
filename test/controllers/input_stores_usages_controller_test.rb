require 'test_helper'

class InputStoresUsagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @input_stores_usage = input_stores_usages(:one)
  end

  test "should get index" do
    get input_stores_usages_url
    assert_response :success
  end

  test "should get new" do
    get new_input_stores_usage_url
    assert_response :success
  end

  test "should create input_stores_usage" do
    assert_difference('InputStoresUsage.count') do
      post input_stores_usages_url, params: { input_stores_usage: { company_name: @input_stores_usage.company_name, date: @input_stores_usage.date, delete: @input_stores_usage.delete, farm_name: @input_stores_usage.farm_name, input_name: @input_stores_usage.input_name, profile_number: @input_stores_usage.profile_number, quantity_used: @input_stores_usage.quantity_used, season: @input_stores_usage.season, total_amount: @input_stores_usage.total_amount, unit: @input_stores_usage.unit, user_id: @input_stores_usage.user_id } }
    end

    assert_redirected_to input_stores_usage_url(InputStoresUsage.last)
  end

  test "should show input_stores_usage" do
    get input_stores_usage_url(@input_stores_usage)
    assert_response :success
  end

  test "should get edit" do
    get edit_input_stores_usage_url(@input_stores_usage)
    assert_response :success
  end

  test "should update input_stores_usage" do
    patch input_stores_usage_url(@input_stores_usage), params: { input_stores_usage: { company_name: @input_stores_usage.company_name, date: @input_stores_usage.date, delete: @input_stores_usage.delete, farm_name: @input_stores_usage.farm_name, input_name: @input_stores_usage.input_name, profile_number: @input_stores_usage.profile_number, quantity_used: @input_stores_usage.quantity_used, season: @input_stores_usage.season, total_amount: @input_stores_usage.total_amount, unit: @input_stores_usage.unit, user_id: @input_stores_usage.user_id } }
    assert_redirected_to input_stores_usage_url(@input_stores_usage)
  end

  test "should destroy input_stores_usage" do
    assert_difference('InputStoresUsage.count', -1) do
      delete input_stores_usage_url(@input_stores_usage)
    end

    assert_redirected_to input_stores_usages_url
  end
end

require 'test_helper'

class DeliveriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery = deliveries(:one)
  end

  test "should get index" do
    get deliveries_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_url
    assert_response :success
  end

  test "should create delivery" do
    assert_difference('Delivery.count') do
      post deliveries_url, params: { delivery: { Amount: @delivery.Amount, Company_Name: @delivery.Company_Name, Date: @delivery.Date, Delivered_by: @delivery.Delivered_by, Farm_Name: @delivery.Farm_Name, Goods: @delivery.Goods, Pro_Number: @delivery.Pro_Number, Quantity: @delivery.Quantity, Season: @delivery.Season, Section: @delivery.Section, Type: @delivery.Type, user_id: @delivery.user_id } }
    end

    assert_redirected_to delivery_url(Delivery.last)
  end

  test "should show delivery" do
    get delivery_url(@delivery)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_url(@delivery)
    assert_response :success
  end

  test "should update delivery" do
    patch delivery_url(@delivery), params: { delivery: { Amount: @delivery.Amount, Company_Name: @delivery.Company_Name, Date: @delivery.Date, Delivered_by: @delivery.Delivered_by, Farm_Name: @delivery.Farm_Name, Goods: @delivery.Goods, Pro_Number: @delivery.Pro_Number, Quantity: @delivery.Quantity, Season: @delivery.Season, Section: @delivery.Section, Type: @delivery.Type, user_id: @delivery.user_id } }
    assert_redirected_to delivery_url(@delivery)
  end

  test "should destroy delivery" do
    assert_difference('Delivery.count', -1) do
      delete delivery_url(@delivery)
    end

    assert_redirected_to deliveries_url
  end
end

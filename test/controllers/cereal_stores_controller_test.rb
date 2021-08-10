require 'test_helper'

class CerealStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cereal_store = cereal_stores(:one)
  end

  test "should get index" do
    get cereal_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_cereal_store_url
    assert_response :success
  end

  test "should create cereal_store" do
    assert_difference('CerealStore.count') do
      post cereal_stores_url, params: { cereal_store: { Company_Name: @cereal_store.Company_Name, Date: @cereal_store.Date, Farm_Name: @cereal_store.Farm_Name, Input_Name: @cereal_store.Input_Name, Pro_Number: @cereal_store.Pro_Number, Quantity: @cereal_store.Quantity, Season: @cereal_store.Season, Total_Amount: @cereal_store.Total_Amount, Type: @cereal_store.Type, Unit: @cereal_store.Unit, Unit_Price: @cereal_store.Unit_Price, user_id: @cereal_store.user_id } }
    end

    assert_redirected_to cereal_store_url(CerealStore.last)
  end

  test "should show cereal_store" do
    get cereal_store_url(@cereal_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_cereal_store_url(@cereal_store)
    assert_response :success
  end

  test "should update cereal_store" do
    patch cereal_store_url(@cereal_store), params: { cereal_store: { Company_Name: @cereal_store.Company_Name, Date: @cereal_store.Date, Farm_Name: @cereal_store.Farm_Name, Input_Name: @cereal_store.Input_Name, Pro_Number: @cereal_store.Pro_Number, Quantity: @cereal_store.Quantity, Season: @cereal_store.Season, Total_Amount: @cereal_store.Total_Amount, Type: @cereal_store.Type, Unit: @cereal_store.Unit, Unit_Price: @cereal_store.Unit_Price, user_id: @cereal_store.user_id } }
    assert_redirected_to cereal_store_url(@cereal_store)
  end

  test "should destroy cereal_store" do
    assert_difference('CerealStore.count', -1) do
      delete cereal_store_url(@cereal_store)
    end

    assert_redirected_to cereal_stores_url
  end
end

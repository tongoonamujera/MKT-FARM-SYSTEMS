require 'test_helper'

class PurchasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase = purchases(:one)
  end

  test "should get index" do
    get purchases_url
    assert_response :success
  end

  test "should get new" do
    get new_purchase_url
    assert_response :success
  end

  test "should create purchase" do
    assert_difference('Purchase.count') do
      post purchases_url, params: { purchase: { VAT: @purchase.VAT, company_name: @purchase.company_name, date: @purchase.date, item: @purchase.item, pro_number: @purchase.pro_number, season: @purchase.season, total_amount: @purchase.total_amount, total_items: @purchase.total_items, unit: @purchase.unit, unit_price: @purchase.unit_price, user_id: @purchase.user_id } }
    end

    assert_redirected_to purchase_url(Purchase.last)
  end

  test "should show purchase" do
    get purchase_url(@purchase)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchase_url(@purchase)
    assert_response :success
  end

  test "should update purchase" do
    patch purchase_url(@purchase), params: { purchase: { VAT: @purchase.VAT, company_name: @purchase.company_name, date: @purchase.date, item: @purchase.item, pro_number: @purchase.pro_number, season: @purchase.season, total_amount: @purchase.total_amount, total_items: @purchase.total_items, unit: @purchase.unit, unit_price: @purchase.unit_price, user_id: @purchase.user_id } }
    assert_redirected_to purchase_url(@purchase)
  end

  test "should destroy purchase" do
    assert_difference('Purchase.count', -1) do
      delete purchase_url(@purchase)
    end

    assert_redirected_to purchases_url
  end
end

require 'test_helper'

class AssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get assets_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_url
    assert_response :success
  end

  test "should create asset" do
    assert_difference('Asset.count') do
      post assets_url, params: { asset: { Asset: @asset.Asset, Asset_Number: @asset.Asset_Number, Asset_Type: @asset.Asset_Type, Company_Name: @asset.Company_Name, Date: @asset.Date, Pro_Number: @asset.Pro_Number, Season: @asset.Season, Total_Amount: @asset.Total_Amount, Unit_Price: @asset.Unit_Price, user_id: @asset.user_id } }
    end

    assert_redirected_to asset_url(Asset.last)
  end

  test "should show asset" do
    get asset_url(@asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_url(@asset)
    assert_response :success
  end

  test "should update asset" do
    patch asset_url(@asset), params: { asset: { Asset: @asset.Asset, Asset_Number: @asset.Asset_Number, Asset_Type: @asset.Asset_Type, Company_Name: @asset.Company_Name, Date: @asset.Date, Pro_Number: @asset.Pro_Number, Season: @asset.Season, Total_Amount: @asset.Total_Amount, Unit_Price: @asset.Unit_Price, user_id: @asset.user_id } }
    assert_redirected_to asset_url(@asset)
  end

  test "should destroy asset" do
    assert_difference('Asset.count', -1) do
      delete asset_url(@asset)
    end

    assert_redirected_to assets_url
  end
end

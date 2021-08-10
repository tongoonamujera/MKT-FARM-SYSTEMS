require 'test_helper'

class CerealSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cereal_sale = cereal_sales(:one)
  end

  test "should get index" do
    get cereal_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_cereal_sale_url
    assert_response :success
  end

  test "should create cereal_sale" do
    assert_difference('CerealSale.count') do
      post cereal_sales_url, params: { cereal_sale: { Amount_Paid: @cereal_sale.Amount_Paid, Company_Name: @cereal_sale.Company_Name, Date: @cereal_sale.Date, External_Matter: @cereal_sale.External_Matter, Farm_Name: @cereal_sale.Farm_Name, Gross_Mass: @cereal_sale.Gross_Mass, Grower_Name: @cereal_sale.Grower_Name, Net_Mass: @cereal_sale.Net_Mass, Price_Per_Tonne: @cereal_sale.Price_Per_Tonne, Pro_Number: @cereal_sale.Pro_Number, Quantity: @cereal_sale.Quantity, Season: @cereal_sale.Season, Tare: @cereal_sale.Tare, Test_Density: @cereal_sale.Test_Density, Trailer_Number: @cereal_sale.Trailer_Number, Truck_Number: @cereal_sale.Truck_Number, user_id: @cereal_sale.user_id } }
    end

    assert_redirected_to cereal_sale_url(CerealSale.last)
  end

  test "should show cereal_sale" do
    get cereal_sale_url(@cereal_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_cereal_sale_url(@cereal_sale)
    assert_response :success
  end

  test "should update cereal_sale" do
    patch cereal_sale_url(@cereal_sale), params: { cereal_sale: { Amount_Paid: @cereal_sale.Amount_Paid, Company_Name: @cereal_sale.Company_Name, Date: @cereal_sale.Date, External_Matter: @cereal_sale.External_Matter, Farm_Name: @cereal_sale.Farm_Name, Gross_Mass: @cereal_sale.Gross_Mass, Grower_Name: @cereal_sale.Grower_Name, Net_Mass: @cereal_sale.Net_Mass, Price_Per_Tonne: @cereal_sale.Price_Per_Tonne, Pro_Number: @cereal_sale.Pro_Number, Quantity: @cereal_sale.Quantity, Season: @cereal_sale.Season, Tare: @cereal_sale.Tare, Test_Density: @cereal_sale.Test_Density, Trailer_Number: @cereal_sale.Trailer_Number, Truck_Number: @cereal_sale.Truck_Number, user_id: @cereal_sale.user_id } }
    assert_redirected_to cereal_sale_url(@cereal_sale)
  end

  test "should destroy cereal_sale" do
    assert_difference('CerealSale.count', -1) do
      delete cereal_sale_url(@cereal_sale)
    end

    assert_redirected_to cereal_sales_url
  end
end

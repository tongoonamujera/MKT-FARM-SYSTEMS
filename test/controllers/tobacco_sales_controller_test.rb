require 'test_helper'

class TobaccoSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tobacco_sale = tobacco_sales(:one)
  end

  test "should get index" do
    get tobacco_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_tobacco_sale_url
    assert_response :success
  end

  test "should create tobacco_sale" do
    assert_difference('TobaccoSale.count') do
      post tobacco_sales_url, params: { tobacco_sale: { afforestration: @tobacco_sale.afforestration, average_price: @tobacco_sale.average_price, balance: @tobacco_sale.balance, bales_sold: @tobacco_sale.bales_sold, bank_amount: @tobacco_sale.bank_amount, bank_name: @tobacco_sale.bank_name, collect_bales: @tobacco_sale.collect_bales, date: @tobacco_sale.date, gross_realisation: @tobacco_sale.gross_realisation, grower_number: @tobacco_sale.grower_number, insurance_amount: @tobacco_sale.insurance_amount, insurance_name: @tobacco_sale.insurance_name, levy: @tobacco_sale.levy, mass: @tobacco_sale.mass, net_realistion: @tobacco_sale.net_realistion, other_1_amount: @tobacco_sale.other_1_amount, other_1_name: @tobacco_sale.other_1_name, other_2_amount: @tobacco_sale.other_2_amount, other_2_name: @tobacco_sale.other_2_name, sale_number: @tobacco_sale.sale_number, season: @tobacco_sale.season, section: @tobacco_sale.section, stop_oder_commission: @tobacco_sale.stop_oder_commission, tianZe: @tobacco_sale.tianZe, transporter_amount: @tobacco_sale.transporter_amount, transporter_name: @tobacco_sale.transporter_name, user_id: @tobacco_sale.user_id, weighing_and_auction: @tobacco_sale.weighing_and_auction } }
    end

    assert_redirected_to tobacco_sale_url(TobaccoSale.last)
  end

  test "should show tobacco_sale" do
    get tobacco_sale_url(@tobacco_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_tobacco_sale_url(@tobacco_sale)
    assert_response :success
  end

  test "should update tobacco_sale" do
    patch tobacco_sale_url(@tobacco_sale), params: { tobacco_sale: { afforestration: @tobacco_sale.afforestration, average_price: @tobacco_sale.average_price, balance: @tobacco_sale.balance, bales_sold: @tobacco_sale.bales_sold, bank_amount: @tobacco_sale.bank_amount, bank_name: @tobacco_sale.bank_name, collect_bales: @tobacco_sale.collect_bales, date: @tobacco_sale.date, gross_realisation: @tobacco_sale.gross_realisation, grower_number: @tobacco_sale.grower_number, insurance_amount: @tobacco_sale.insurance_amount, insurance_name: @tobacco_sale.insurance_name, levy: @tobacco_sale.levy, mass: @tobacco_sale.mass, net_realistion: @tobacco_sale.net_realistion, other_1_amount: @tobacco_sale.other_1_amount, other_1_name: @tobacco_sale.other_1_name, other_2_amount: @tobacco_sale.other_2_amount, other_2_name: @tobacco_sale.other_2_name, sale_number: @tobacco_sale.sale_number, season: @tobacco_sale.season, section: @tobacco_sale.section, stop_oder_commission: @tobacco_sale.stop_oder_commission, tianZe: @tobacco_sale.tianZe, transporter_amount: @tobacco_sale.transporter_amount, transporter_name: @tobacco_sale.transporter_name, user_id: @tobacco_sale.user_id, weighing_and_auction: @tobacco_sale.weighing_and_auction } }
    assert_redirected_to tobacco_sale_url(@tobacco_sale)
  end

  test "should destroy tobacco_sale" do
    assert_difference('TobaccoSale.count', -1) do
      delete tobacco_sale_url(@tobacco_sale)
    end

    assert_redirected_to tobacco_sales_url
  end
end

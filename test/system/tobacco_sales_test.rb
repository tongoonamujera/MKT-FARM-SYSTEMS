require "application_system_test_case"

class TobaccoSalesTest < ApplicationSystemTestCase
  setup do
    @tobacco_sale = tobacco_sales(:one)
  end

  test "visiting the index" do
    visit tobacco_sales_url
    assert_selector "h1", text: "Tobacco Sales"
  end

  test "creating a Tobacco sale" do
    visit tobacco_sales_url
    click_on "New Tobacco Sale"

    fill_in "Afforestration", with: @tobacco_sale.afforestration
    fill_in "Average price", with: @tobacco_sale.average_price
    fill_in "Balance", with: @tobacco_sale.balance
    fill_in "Bales sold", with: @tobacco_sale.bales_sold
    fill_in "Bank amount", with: @tobacco_sale.bank_amount
    fill_in "Bank name", with: @tobacco_sale.bank_name
    fill_in "Collect bales", with: @tobacco_sale.collect_bales
    fill_in "Date", with: @tobacco_sale.date
    fill_in "Gross realisation", with: @tobacco_sale.gross_realisation
    fill_in "Grower number", with: @tobacco_sale.grower_number
    fill_in "Insurance amount", with: @tobacco_sale.insurance_amount
    fill_in "Insurance name", with: @tobacco_sale.insurance_name
    fill_in "Levy", with: @tobacco_sale.levy
    fill_in "Mass", with: @tobacco_sale.mass
    fill_in "Net realistion", with: @tobacco_sale.net_realistion
    fill_in "Other 1 amount", with: @tobacco_sale.other_1_amount
    fill_in "Other 1 name", with: @tobacco_sale.other_1_name
    fill_in "Other 2 amount", with: @tobacco_sale.other_2_amount
    fill_in "Other 2 name", with: @tobacco_sale.other_2_name
    fill_in "Sale number", with: @tobacco_sale.sale_number
    fill_in "Season", with: @tobacco_sale.season
    fill_in "Section", with: @tobacco_sale.section
    fill_in "Stop oder commission", with: @tobacco_sale.stop_oder_commission
    fill_in "Tianze", with: @tobacco_sale.tianZe
    fill_in "Transporter amount", with: @tobacco_sale.transporter_amount
    fill_in "Transporter name", with: @tobacco_sale.transporter_name
    fill_in "User", with: @tobacco_sale.user_id
    fill_in "Weighing and auction", with: @tobacco_sale.weighing_and_auction
    click_on "Create Tobacco sale"

    assert_text "Tobacco sale was successfully created"
    click_on "Back"
  end

  test "updating a Tobacco sale" do
    visit tobacco_sales_url
    click_on "Edit", match: :first

    fill_in "Afforestration", with: @tobacco_sale.afforestration
    fill_in "Average price", with: @tobacco_sale.average_price
    fill_in "Balance", with: @tobacco_sale.balance
    fill_in "Bales sold", with: @tobacco_sale.bales_sold
    fill_in "Bank amount", with: @tobacco_sale.bank_amount
    fill_in "Bank name", with: @tobacco_sale.bank_name
    fill_in "Collect bales", with: @tobacco_sale.collect_bales
    fill_in "Date", with: @tobacco_sale.date
    fill_in "Gross realisation", with: @tobacco_sale.gross_realisation
    fill_in "Grower number", with: @tobacco_sale.grower_number
    fill_in "Insurance amount", with: @tobacco_sale.insurance_amount
    fill_in "Insurance name", with: @tobacco_sale.insurance_name
    fill_in "Levy", with: @tobacco_sale.levy
    fill_in "Mass", with: @tobacco_sale.mass
    fill_in "Net realistion", with: @tobacco_sale.net_realistion
    fill_in "Other 1 amount", with: @tobacco_sale.other_1_amount
    fill_in "Other 1 name", with: @tobacco_sale.other_1_name
    fill_in "Other 2 amount", with: @tobacco_sale.other_2_amount
    fill_in "Other 2 name", with: @tobacco_sale.other_2_name
    fill_in "Sale number", with: @tobacco_sale.sale_number
    fill_in "Season", with: @tobacco_sale.season
    fill_in "Section", with: @tobacco_sale.section
    fill_in "Stop oder commission", with: @tobacco_sale.stop_oder_commission
    fill_in "Tianze", with: @tobacco_sale.tianZe
    fill_in "Transporter amount", with: @tobacco_sale.transporter_amount
    fill_in "Transporter name", with: @tobacco_sale.transporter_name
    fill_in "User", with: @tobacco_sale.user_id
    fill_in "Weighing and auction", with: @tobacco_sale.weighing_and_auction
    click_on "Update Tobacco sale"

    assert_text "Tobacco sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Tobacco sale" do
    visit tobacco_sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tobacco sale was successfully destroyed"
  end
end

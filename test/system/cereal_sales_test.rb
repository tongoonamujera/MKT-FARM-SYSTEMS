require "application_system_test_case"

class CerealSalesTest < ApplicationSystemTestCase
  setup do
    @cereal_sale = cereal_sales(:one)
  end

  test "visiting the index" do
    visit cereal_sales_url
    assert_selector "h1", text: "Cereal Sales"
  end

  test "creating a Cereal sale" do
    visit cereal_sales_url
    click_on "New Cereal Sale"

    fill_in "Amount paid", with: @cereal_sale.Amount_Paid
    fill_in "Company name", with: @cereal_sale.Company_Name
    fill_in "Date", with: @cereal_sale.Date
    fill_in "External matter", with: @cereal_sale.External_Matter
    fill_in "Farm name", with: @cereal_sale.Farm_Name
    fill_in "Gross mass", with: @cereal_sale.Gross_Mass
    fill_in "Grower name", with: @cereal_sale.Grower_Name
    fill_in "Net mass", with: @cereal_sale.Net_Mass
    fill_in "Price per tonne", with: @cereal_sale.Price_Per_Tonne
    fill_in "Pro number", with: @cereal_sale.Pro_Number
    fill_in "Quantity", with: @cereal_sale.Quantity
    fill_in "Season", with: @cereal_sale.Season
    fill_in "Tare", with: @cereal_sale.Tare
    fill_in "Test density", with: @cereal_sale.Test_Density
    fill_in "Trailer number", with: @cereal_sale.Trailer_Number
    fill_in "Truck number", with: @cereal_sale.Truck_Number
    fill_in "User", with: @cereal_sale.user_id
    click_on "Create Cereal sale"

    assert_text "Cereal sale was successfully created"
    click_on "Back"
  end

  test "updating a Cereal sale" do
    visit cereal_sales_url
    click_on "Edit", match: :first

    fill_in "Amount paid", with: @cereal_sale.Amount_Paid
    fill_in "Company name", with: @cereal_sale.Company_Name
    fill_in "Date", with: @cereal_sale.Date
    fill_in "External matter", with: @cereal_sale.External_Matter
    fill_in "Farm name", with: @cereal_sale.Farm_Name
    fill_in "Gross mass", with: @cereal_sale.Gross_Mass
    fill_in "Grower name", with: @cereal_sale.Grower_Name
    fill_in "Net mass", with: @cereal_sale.Net_Mass
    fill_in "Price per tonne", with: @cereal_sale.Price_Per_Tonne
    fill_in "Pro number", with: @cereal_sale.Pro_Number
    fill_in "Quantity", with: @cereal_sale.Quantity
    fill_in "Season", with: @cereal_sale.Season
    fill_in "Tare", with: @cereal_sale.Tare
    fill_in "Test density", with: @cereal_sale.Test_Density
    fill_in "Trailer number", with: @cereal_sale.Trailer_Number
    fill_in "Truck number", with: @cereal_sale.Truck_Number
    fill_in "User", with: @cereal_sale.user_id
    click_on "Update Cereal sale"

    assert_text "Cereal sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Cereal sale" do
    visit cereal_sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cereal sale was successfully destroyed"
  end
end

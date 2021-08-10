require "application_system_test_case"

class DeductionTablesTest < ApplicationSystemTestCase
  setup do
    @deduction_table = deduction_tables(:one)
  end

  test "visiting the index" do
    visit deduction_tables_url
    assert_selector "h1", text: "Deduction Tables"
  end

  test "creating a Deduction table" do
    visit deduction_tables_url
    click_on "New Deduction Table"

    fill_in "Farm name", with: @deduction_table.Farm_Name
    fill_in "Gross", with: @deduction_table.Gross
    fill_in "Month", with: @deduction_table.Month
    fill_in "Net", with: @deduction_table.Net
    fill_in "Season", with: @deduction_table.Season
    click_on "Create Deduction table"

    assert_text "Deduction table was successfully created"
    click_on "Back"
  end

  test "updating a Deduction table" do
    visit deduction_tables_url
    click_on "Edit", match: :first

    fill_in "Farm name", with: @deduction_table.Farm_Name
    fill_in "Gross", with: @deduction_table.Gross
    fill_in "Month", with: @deduction_table.Month
    fill_in "Net", with: @deduction_table.Net
    fill_in "Season", with: @deduction_table.Season
    click_on "Update Deduction table"

    assert_text "Deduction table was successfully updated"
    click_on "Back"
  end

  test "destroying a Deduction table" do
    visit deduction_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deduction table was successfully destroyed"
  end
end

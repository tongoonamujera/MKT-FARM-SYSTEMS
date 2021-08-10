require 'test_helper'

class DeductionTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deduction_table = deduction_tables(:one)
  end

  test "should get index" do
    get deduction_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_deduction_table_url
    assert_response :success
  end

  test "should create deduction_table" do
    assert_difference('DeductionTable.count') do
      post deduction_tables_url, params: { deduction_table: { Farm_Name: @deduction_table.Farm_Name, Gross: @deduction_table.Gross, Month: @deduction_table.Month, Net: @deduction_table.Net, Season: @deduction_table.Season } }
    end

    assert_redirected_to deduction_table_url(DeductionTable.last)
  end

  test "should show deduction_table" do
    get deduction_table_url(@deduction_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_deduction_table_url(@deduction_table)
    assert_response :success
  end

  test "should update deduction_table" do
    patch deduction_table_url(@deduction_table), params: { deduction_table: { Farm_Name: @deduction_table.Farm_Name, Gross: @deduction_table.Gross, Month: @deduction_table.Month, Net: @deduction_table.Net, Season: @deduction_table.Season } }
    assert_redirected_to deduction_table_url(@deduction_table)
  end

  test "should destroy deduction_table" do
    assert_difference('DeductionTable.count', -1) do
      delete deduction_table_url(@deduction_table)
    end

    assert_redirected_to deduction_tables_url
  end
end

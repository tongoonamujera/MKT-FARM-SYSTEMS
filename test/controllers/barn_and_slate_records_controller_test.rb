require 'test_helper'

class BarnAndSlateRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @barn_and_slate_record = barn_and_slate_records(:one)
  end

  test "should get index" do
    get barn_and_slate_records_url
    assert_response :success
  end

  test "should get new" do
    get new_barn_and_slate_record_url
    assert_response :success
  end

  test "should create barn_and_slate_record" do
    assert_difference('BarnAndSlateRecord.count') do
      post barn_and_slate_records_url, params: { barn_and_slate_record: { Barn_Weight: @barn_and_slate_record.Barn_Weight, Company_Name: @barn_and_slate_record.Company_Name, Cumulative_Barn_Weight: @barn_and_slate_record.Cumulative_Barn_Weight, Date: @barn_and_slate_record.Date, Farm_Name: @barn_and_slate_record.Farm_Name, P_Barn_Number: @barn_and_slate_record.P_Barn_Number, P_Slate_NumberSlate_Weight: @barn_and_slate_record.P_Slate_NumberSlate_Weight, Pro_Number: @barn_and_slate_record.Pro_Number, Reap: @barn_and_slate_record.Reap, Season: @barn_and_slate_record.Season, user_id: @barn_and_slate_record.user_id } }
    end

    assert_redirected_to barn_and_slate_record_url(BarnAndSlateRecord.last)
  end

  test "should show barn_and_slate_record" do
    get barn_and_slate_record_url(@barn_and_slate_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_barn_and_slate_record_url(@barn_and_slate_record)
    assert_response :success
  end

  test "should update barn_and_slate_record" do
    patch barn_and_slate_record_url(@barn_and_slate_record), params: { barn_and_slate_record: { Barn_Weight: @barn_and_slate_record.Barn_Weight, Company_Name: @barn_and_slate_record.Company_Name, Cumulative_Barn_Weight: @barn_and_slate_record.Cumulative_Barn_Weight, Date: @barn_and_slate_record.Date, Farm_Name: @barn_and_slate_record.Farm_Name, P_Barn_Number: @barn_and_slate_record.P_Barn_Number, P_Slate_NumberSlate_Weight: @barn_and_slate_record.P_Slate_NumberSlate_Weight, Pro_Number: @barn_and_slate_record.Pro_Number, Reap: @barn_and_slate_record.Reap, Season: @barn_and_slate_record.Season, user_id: @barn_and_slate_record.user_id } }
    assert_redirected_to barn_and_slate_record_url(@barn_and_slate_record)
  end

  test "should destroy barn_and_slate_record" do
    assert_difference('BarnAndSlateRecord.count', -1) do
      delete barn_and_slate_record_url(@barn_and_slate_record)
    end

    assert_redirected_to barn_and_slate_records_url
  end
end

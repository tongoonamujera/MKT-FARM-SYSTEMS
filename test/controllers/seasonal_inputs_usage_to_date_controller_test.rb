require 'test_helper'

class SeasonalInputsUsageToDateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seasonal_inputs_usage_to_date_index_url
    assert_response :success
  end

end

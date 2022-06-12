require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get Create" do
    get sessions_Create_url
    assert_response :success
  end
end

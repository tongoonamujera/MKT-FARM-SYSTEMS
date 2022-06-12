require "test_helper"

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get Create" do
    get registrations_Create_url
    assert_response :success
  end
end

require 'test_helper'

class TimebooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timebook = timebooks(:one)
  end

  test "should get index" do
    get timebooks_url
    assert_response :success
  end

  test "should get new" do
    get new_timebook_url
    assert_response :success
  end

  test "should create timebook" do
    assert_difference('Timebook.count') do
      post timebooks_url, params: { timebook: { date: @timebook.date, day: @timebook.day, employee_name: @timebook.employee_name, employee_number: @timebook.employee_number, gross: @timebook.gross, rate: @timebook.rate, user_id: @timebook.user_id } }
    end

    assert_redirected_to timebook_url(Timebook.last)
  end

  test "should show timebook" do
    get timebook_url(@timebook)
    assert_response :success
  end

  test "should get edit" do
    get edit_timebook_url(@timebook)
    assert_response :success
  end

  test "should update timebook" do
    patch timebook_url(@timebook), params: { timebook: { date: @timebook.date, day: @timebook.day, employee_name: @timebook.employee_name, employee_number: @timebook.employee_number, gross: @timebook.gross, rate: @timebook.rate, user_id: @timebook.user_id } }
    assert_redirected_to timebook_url(@timebook)
  end

  test "should destroy timebook" do
    assert_difference('Timebook.count', -1) do
      delete timebook_url(@timebook)
    end

    assert_redirected_to timebooks_url
  end
end

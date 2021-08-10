require 'test_helper'

class IrriagtionSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irriagtion_schedule = irriagtion_schedules(:one)
  end

  test "should get index" do
    get irriagtion_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_irriagtion_schedule_url
    assert_response :success
  end

  test "should create irriagtion_schedule" do
    assert_difference('IrriagtionSchedule.count') do
      post irriagtion_schedules_url, params: { irriagtion_schedule: { Calibration: @irriagtion_schedule.Calibration, Company_Name: @irriagtion_schedule.Company_Name, Crop: @irriagtion_schedule.Crop, Date: @irriagtion_schedule.Date, End_Date: @irriagtion_schedule.End_Date, Farm_Name: @irriagtion_schedule.Farm_Name, Mls: @irriagtion_schedule.Mls, Pro_Number: @irriagtion_schedule.Pro_Number, Season: @irriagtion_schedule.Season, Section: @irriagtion_schedule.Section, Start_Date: @irriagtion_schedule.Start_Date, turn_around_time: @irriagtion_schedule.turn_around_time, user_id: @irriagtion_schedule.user_id } }
    end

    assert_redirected_to irriagtion_schedule_url(IrriagtionSchedule.last)
  end

  test "should show irriagtion_schedule" do
    get irriagtion_schedule_url(@irriagtion_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_irriagtion_schedule_url(@irriagtion_schedule)
    assert_response :success
  end

  test "should update irriagtion_schedule" do
    patch irriagtion_schedule_url(@irriagtion_schedule), params: { irriagtion_schedule: { Calibration: @irriagtion_schedule.Calibration, Company_Name: @irriagtion_schedule.Company_Name, Crop: @irriagtion_schedule.Crop, Date: @irriagtion_schedule.Date, End_Date: @irriagtion_schedule.End_Date, Farm_Name: @irriagtion_schedule.Farm_Name, Mls: @irriagtion_schedule.Mls, Pro_Number: @irriagtion_schedule.Pro_Number, Season: @irriagtion_schedule.Season, Section: @irriagtion_schedule.Section, Start_Date: @irriagtion_schedule.Start_Date, turn_around_time: @irriagtion_schedule.turn_around_time, user_id: @irriagtion_schedule.user_id } }
    assert_redirected_to irriagtion_schedule_url(@irriagtion_schedule)
  end

  test "should destroy irriagtion_schedule" do
    assert_difference('IrriagtionSchedule.count', -1) do
      delete irriagtion_schedule_url(@irriagtion_schedule)
    end

    assert_redirected_to irriagtion_schedules_url
  end
end

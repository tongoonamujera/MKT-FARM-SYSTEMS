require "application_system_test_case"

class IrriagtionSchedulesTest < ApplicationSystemTestCase
  setup do
    @irriagtion_schedule = irriagtion_schedules(:one)
  end

  test "visiting the index" do
    visit irriagtion_schedules_url
    assert_selector "h1", text: "Irriagtion Schedules"
  end

  test "creating a Irriagtion schedule" do
    visit irriagtion_schedules_url
    click_on "New Irriagtion Schedule"

    fill_in "Calibration", with: @irriagtion_schedule.Calibration
    fill_in "Company name", with: @irriagtion_schedule.Company_Name
    fill_in "Crop", with: @irriagtion_schedule.Crop
    fill_in "Date", with: @irriagtion_schedule.Date
    fill_in "End date", with: @irriagtion_schedule.End_Date
    fill_in "Farm name", with: @irriagtion_schedule.Farm_Name
    fill_in "Mls", with: @irriagtion_schedule.Mls
    fill_in "Pro number", with: @irriagtion_schedule.Pro_Number
    fill_in "Season", with: @irriagtion_schedule.Season
    fill_in "Section", with: @irriagtion_schedule.Section
    fill_in "Start date", with: @irriagtion_schedule.Start_Date
    fill_in "Turn around time", with: @irriagtion_schedule.turn_around_time
    fill_in "User", with: @irriagtion_schedule.user_id
    click_on "Create Irriagtion schedule"

    assert_text "Irriagtion schedule was successfully created"
    click_on "Back"
  end

  test "updating a Irriagtion schedule" do
    visit irriagtion_schedules_url
    click_on "Edit", match: :first

    fill_in "Calibration", with: @irriagtion_schedule.Calibration
    fill_in "Company name", with: @irriagtion_schedule.Company_Name
    fill_in "Crop", with: @irriagtion_schedule.Crop
    fill_in "Date", with: @irriagtion_schedule.Date
    fill_in "End date", with: @irriagtion_schedule.End_Date
    fill_in "Farm name", with: @irriagtion_schedule.Farm_Name
    fill_in "Mls", with: @irriagtion_schedule.Mls
    fill_in "Pro number", with: @irriagtion_schedule.Pro_Number
    fill_in "Season", with: @irriagtion_schedule.Season
    fill_in "Section", with: @irriagtion_schedule.Section
    fill_in "Start date", with: @irriagtion_schedule.Start_Date
    fill_in "Turn around time", with: @irriagtion_schedule.turn_around_time
    fill_in "User", with: @irriagtion_schedule.user_id
    click_on "Update Irriagtion schedule"

    assert_text "Irriagtion schedule was successfully updated"
    click_on "Back"
  end

  test "destroying a Irriagtion schedule" do
    visit irriagtion_schedules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Irriagtion schedule was successfully destroyed"
  end
end

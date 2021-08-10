require "application_system_test_case"

class BarnAndSlateRecordsTest < ApplicationSystemTestCase
  setup do
    @barn_and_slate_record = barn_and_slate_records(:one)
  end

  test "visiting the index" do
    visit barn_and_slate_records_url
    assert_selector "h1", text: "Barn And Slate Records"
  end

  test "creating a Barn and slate record" do
    visit barn_and_slate_records_url
    click_on "New Barn And Slate Record"

    fill_in "Barn weight", with: @barn_and_slate_record.Barn_Weight
    fill_in "Company name", with: @barn_and_slate_record.Company_Name
    fill_in "Cumulative barn weight", with: @barn_and_slate_record.Cumulative_Barn_Weight
    fill_in "Date", with: @barn_and_slate_record.Date
    fill_in "Farm name", with: @barn_and_slate_record.Farm_Name
    fill_in "P barn number", with: @barn_and_slate_record.P_Barn_Number
    fill_in "P slate numberslate weight", with: @barn_and_slate_record.P_Slate_NumberSlate_Weight
    fill_in "Pro number", with: @barn_and_slate_record.Pro_Number
    fill_in "Reap", with: @barn_and_slate_record.Reap
    fill_in "Season", with: @barn_and_slate_record.Season
    fill_in "User", with: @barn_and_slate_record.user_id
    click_on "Create Barn and slate record"

    assert_text "Barn and slate record was successfully created"
    click_on "Back"
  end

  test "updating a Barn and slate record" do
    visit barn_and_slate_records_url
    click_on "Edit", match: :first

    fill_in "Barn weight", with: @barn_and_slate_record.Barn_Weight
    fill_in "Company name", with: @barn_and_slate_record.Company_Name
    fill_in "Cumulative barn weight", with: @barn_and_slate_record.Cumulative_Barn_Weight
    fill_in "Date", with: @barn_and_slate_record.Date
    fill_in "Farm name", with: @barn_and_slate_record.Farm_Name
    fill_in "P barn number", with: @barn_and_slate_record.P_Barn_Number
    fill_in "P slate numberslate weight", with: @barn_and_slate_record.P_Slate_NumberSlate_Weight
    fill_in "Pro number", with: @barn_and_slate_record.Pro_Number
    fill_in "Reap", with: @barn_and_slate_record.Reap
    fill_in "Season", with: @barn_and_slate_record.Season
    fill_in "User", with: @barn_and_slate_record.user_id
    click_on "Update Barn and slate record"

    assert_text "Barn and slate record was successfully updated"
    click_on "Back"
  end

  test "destroying a Barn and slate record" do
    visit barn_and_slate_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Barn and slate record was successfully destroyed"
  end
end

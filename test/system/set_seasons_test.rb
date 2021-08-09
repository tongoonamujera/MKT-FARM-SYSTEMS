require "application_system_test_case"

class SetSeasonsTest < ApplicationSystemTestCase
  setup do
    @set_season = set_seasons(:one)
  end

  test "visiting the index" do
    visit set_seasons_url
    assert_selector "h1", text: "Set Seasons"
  end

  test "creating a Set season" do
    visit set_seasons_url
    click_on "New Set Season"

    fill_in "Date", with: @set_season.Date
    fill_in "Season", with: @set_season.Season
    fill_in "User", with: @set_season.user_id
    click_on "Create Set season"

    assert_text "Set season was successfully created"
    click_on "Back"
  end

  test "updating a Set season" do
    visit set_seasons_url
    click_on "Edit", match: :first

    fill_in "Date", with: @set_season.Date
    fill_in "Season", with: @set_season.Season
    fill_in "User", with: @set_season.user_id
    click_on "Update Set season"

    assert_text "Set season was successfully updated"
    click_on "Back"
  end

  test "destroying a Set season" do
    visit set_seasons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Set season was successfully destroyed"
  end
end

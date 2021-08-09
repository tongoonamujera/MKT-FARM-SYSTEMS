require 'test_helper'

class SetSeasonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @set_season = set_seasons(:one)
  end

  test "should get index" do
    get set_seasons_url
    assert_response :success
  end

  test "should get new" do
    get new_set_season_url
    assert_response :success
  end

  test "should create set_season" do
    assert_difference('SetSeason.count') do
      post set_seasons_url, params: { set_season: { Date: @set_season.Date, Season: @set_season.Season, user_id: @set_season.user_id } }
    end

    assert_redirected_to set_season_url(SetSeason.last)
  end

  test "should show set_season" do
    get set_season_url(@set_season)
    assert_response :success
  end

  test "should get edit" do
    get edit_set_season_url(@set_season)
    assert_response :success
  end

  test "should update set_season" do
    patch set_season_url(@set_season), params: { set_season: { Date: @set_season.Date, Season: @set_season.Season, user_id: @set_season.user_id } }
    assert_redirected_to set_season_url(@set_season)
  end

  test "should destroy set_season" do
    assert_difference('SetSeason.count', -1) do
      delete set_season_url(@set_season)
    end

    assert_redirected_to set_seasons_url
  end
end

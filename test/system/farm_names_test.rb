require "application_system_test_case"

class FarmNamesTest < ApplicationSystemTestCase
  setup do
    @farm_name = farm_names(:one)
  end

  test "visiting the index" do
    visit farm_names_url
    assert_selector "h1", text: "Farm Names"
  end

  test "creating a Farm name" do
    visit farm_names_url
    click_on "New Farm Name"

    fill_in "Farm name", with: @farm_name.farm_name
    fill_in "User", with: @farm_name.user_id
    click_on "Create Farm name"

    assert_text "Farm name was successfully created"
    click_on "Back"
  end

  test "updating a Farm name" do
    visit farm_names_url
    click_on "Edit", match: :first

    fill_in "Farm name", with: @farm_name.farm_name
    fill_in "User", with: @farm_name.user_id
    click_on "Update Farm name"

    assert_text "Farm name was successfully updated"
    click_on "Back"
  end

  test "destroying a Farm name" do
    visit farm_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Farm name was successfully destroyed"
  end
end

require "application_system_test_case"

class EquipmentServicesTest < ApplicationSystemTestCase
  setup do
    @equipment_service = equipment_services(:one)
  end

  test "visiting the index" do
    visit equipment_services_url
    assert_selector "h1", text: "Equipment Services"
  end

  test "creating a Equipment service" do
    visit equipment_services_url
    click_on "New Equipment Service"

    fill_in "Company name", with: @equipment_service.Company_Name
    fill_in "Date", with: @equipment_service.Date
    fill_in "Done by", with: @equipment_service.Done_By
    fill_in "Equipment number", with: @equipment_service.Equipment_Number
    fill_in "Job", with: @equipment_service.Job
    fill_in "Mileage", with: @equipment_service.Mileage
    fill_in "Pro number", with: @equipment_service.Pro_Number
    fill_in "Season", with: @equipment_service.Season
    fill_in "Service type", with: @equipment_service.Service_Type
    fill_in "Total amount", with: @equipment_service.Total_Amount
    fill_in "Type", with: @equipment_service.Type
    fill_in "Next service-milaege", with: @equipment_service.next_service-milaege
    fill_in "User", with: @equipment_service.user_id
    click_on "Create Equipment service"

    assert_text "Equipment service was successfully created"
    click_on "Back"
  end

  test "updating a Equipment service" do
    visit equipment_services_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @equipment_service.Company_Name
    fill_in "Date", with: @equipment_service.Date
    fill_in "Done by", with: @equipment_service.Done_By
    fill_in "Equipment number", with: @equipment_service.Equipment_Number
    fill_in "Job", with: @equipment_service.Job
    fill_in "Mileage", with: @equipment_service.Mileage
    fill_in "Pro number", with: @equipment_service.Pro_Number
    fill_in "Season", with: @equipment_service.Season
    fill_in "Service type", with: @equipment_service.Service_Type
    fill_in "Total amount", with: @equipment_service.Total_Amount
    fill_in "Type", with: @equipment_service.Type
    fill_in "Next service-milaege", with: @equipment_service.next_service-milaege
    fill_in "User", with: @equipment_service.user_id
    click_on "Update Equipment service"

    assert_text "Equipment service was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipment service" do
    visit equipment_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipment service was successfully destroyed"
  end
end

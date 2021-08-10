require 'test_helper'

class EquipmentServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_service = equipment_services(:one)
  end

  test "should get index" do
    get equipment_services_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_service_url
    assert_response :success
  end

  test "should create equipment_service" do
    assert_difference('EquipmentService.count') do
      post equipment_services_url, params: { equipment_service: { Company_Name: @equipment_service.Company_Name, Date: @equipment_service.Date, Done_By: @equipment_service.Done_By, Equipment_Number: @equipment_service.Equipment_Number, Job: @equipment_service.Job, Mileage: @equipment_service.Mileage, Pro_Number: @equipment_service.Pro_Number, Season: @equipment_service.Season, Service_Type: @equipment_service.Service_Type, Total_Amount: @equipment_service.Total_Amount, Type: @equipment_service.Type, next_service-milaege: @equipment_service.next_service-milaege, user_id: @equipment_service.user_id } }
    end

    assert_redirected_to equipment_service_url(EquipmentService.last)
  end

  test "should show equipment_service" do
    get equipment_service_url(@equipment_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_service_url(@equipment_service)
    assert_response :success
  end

  test "should update equipment_service" do
    patch equipment_service_url(@equipment_service), params: { equipment_service: { Company_Name: @equipment_service.Company_Name, Date: @equipment_service.Date, Done_By: @equipment_service.Done_By, Equipment_Number: @equipment_service.Equipment_Number, Job: @equipment_service.Job, Mileage: @equipment_service.Mileage, Pro_Number: @equipment_service.Pro_Number, Season: @equipment_service.Season, Service_Type: @equipment_service.Service_Type, Total_Amount: @equipment_service.Total_Amount, Type: @equipment_service.Type, next_service-milaege: @equipment_service.next_service-milaege, user_id: @equipment_service.user_id } }
    assert_redirected_to equipment_service_url(@equipment_service)
  end

  test "should destroy equipment_service" do
    assert_difference('EquipmentService.count', -1) do
      delete equipment_service_url(@equipment_service)
    end

    assert_redirected_to equipment_services_url
  end
end

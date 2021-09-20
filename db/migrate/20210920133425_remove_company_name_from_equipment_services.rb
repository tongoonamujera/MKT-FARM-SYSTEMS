class RemoveCompanyNameFromEquipmentServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :equipment_services, :Company_Name, :string
    remove_column :equipment_services, :Date, :date
    remove_column :equipment_services, :Season, :string
    remove_column :equipment_services, :Type, :string
    remove_column :equipment_services, :Equipment_Number, :string
    remove_column :equipment_services, :Service_Type, :string
    remove_column :equipment_services, :Done_By, :string
    remove_column :equipment_services, :Mileage, :string
    remove_column :equipment_services, :Job, :string
    remove_column :equipment_services, :Total_Amount, :string
    remove_column :equipment_services, :Pro_Number, :string

    add_column :equipment_services, :company_name, :string
    add_column :equipment_services, :date, :date
    add_column :equipment_services, :season, :string
    add_column :equipment_services, :type, :string
    add_column :equipment_services, :equipment_number, :string
    add_column :equipment_services, :service_type, :string
    add_column :equipment_services, :done_by, :string
    add_column :equipment_services, :mileage, :string
    add_column :equipment_services, :job, :string
    add_column :equipment_services, :total_amount, :decimal
    add_column :equipment_services, :pro_number, :string
  end
end

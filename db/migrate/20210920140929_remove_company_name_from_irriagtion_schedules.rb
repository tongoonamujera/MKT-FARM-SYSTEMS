class RemoveCompanyNameFromIrriagtionSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_column :irriagtion_schedules, :Company_Name, :string
    remove_column :irriagtion_schedules, :Date, :date
    remove_column :irriagtion_schedules, :Season, :string
    remove_column :irriagtion_schedules, :Farm_Name, :string
    remove_column :irriagtion_schedules, :Section, :string
    remove_column :irriagtion_schedules, :Crop, :string
    remove_column :irriagtion_schedules, :Calibration, :string
    remove_column :irriagtion_schedules, :Mls, :string
    remove_column :irriagtion_schedules, :Start_Date, :date
    remove_column :irriagtion_schedules, :End_Date, :date
    remove_column :irriagtion_schedules, :Pro_Number, :string

    add_column :irriagtion_schedules, :company_name, :string
    add_column :irriagtion_schedules, :date, :date
    add_column :irriagtion_schedules, :season, :string
    add_column :irriagtion_schedules, :section, :string
    add_column :irriagtion_schedules, :crop, :string
    add_column :irriagtion_schedules, :calibration, :string
    add_column :irriagtion_schedules, :mls, :string
    add_column :irriagtion_schedules, :start_date, :date
    add_column :irriagtion_schedules, :end_date, :date
    add_column :irriagtion_schedules, :farm_name, :string
    add_column :irriagtion_schedules, :pro_number, :string
  end
end

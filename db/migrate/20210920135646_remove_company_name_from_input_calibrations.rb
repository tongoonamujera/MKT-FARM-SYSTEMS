class RemoveCompanyNameFromInputCalibrations < ActiveRecord::Migration[6.0]
  def change
    remove_column :input_calibrations, :Company_Name, :string
    remove_column :input_calibrations, :Date, :date
    remove_column :input_calibrations, :Season, :string
    remove_column :input_calibrations, :Farm_Name, :string
    remove_column :input_calibrations, :Section, :string
    remove_column :input_calibrations, :Crop, :string
    remove_column :input_calibrations, :Variety, :string
    remove_column :input_calibrations, :Bags_Used, :string
    remove_column :input_calibrations, :Herbicide, :string
    remove_column :input_calibrations, :Herbicide_Rate, :string
    remove_column :input_calibrations, :Pro_Number, :string

    add_column :input_calibrations, :company_name, :string
    add_column :input_calibrations, :date, :date
    add_column :input_calibrations, :season, :string
    add_column :input_calibrations, :farm_name, :string
    add_column :input_calibrations, :section, :string
    add_column :input_calibrations, :crop, :string
    add_column :input_calibrations, :variety, :string
    add_column :input_calibrations, :bags_used, :decimal
    add_column :input_calibrations, :herbicide, :string
    add_column :input_calibrations, :herbicide_rate, :string
    add_column :input_calibrations, :pro_number, :string
  end
end

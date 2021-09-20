class RemoveCompanyNameFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :Company_Name, :string
    remove_column :activities, :Date, :date
    remove_column :activities, :Season, :string
    remove_column :activities, :Farm_Name, :string
    remove_column :activities, :Section, :string
    remove_column :activities, :Activity, :string
    remove_column :activities, :Pro_Number, :string


    add_column :activities, :company_name, :string
    add_column :activities, :date, :date
    add_column :activities, :season, :string
    add_column :activities, :farm_name, :string
    add_column :activities, :section, :string
    add_column :activities, :activity, :string
    add_column :activities, :pro_number, :string
  end
end

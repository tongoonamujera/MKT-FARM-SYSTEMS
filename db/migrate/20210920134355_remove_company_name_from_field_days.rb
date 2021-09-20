class RemoveCompanyNameFromFieldDays < ActiveRecord::Migration[6.0]
  def change
    remove_column :field_days, :Company_Name, :string
    remove_column :field_days, :Date, :date
    remove_column :field_days, :Season, :string
    remove_column :field_days, :Start_Time, :time
    remove_column :field_days, :focus, :string

    add_column :field_days, :company_name, :string
    add_column :field_days, :date, :date
    add_column :field_days, :season, :string
    add_column :field_days, :start_time, :time
    add_column :field_days, :focus, :text
  end
end

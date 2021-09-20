class RemoveCompanyNameFromCurings < ActiveRecord::Migration[6.0]
  def change
    remove_column :curings, :Company_Name, :string
    remove_column :curings, :Date, :date
    remove_column :curings, :Season, :string
    remove_column :curings, :Farm_Name, :string
    remove_column :curings, :Facility, :string
    remove_column :curings, :Time, :datetime
    remove_column :curings, :Day, :date
    remove_column :curings, :Temperature, :string
    remove_column :curings, :Pro_Number, :string

    add_column :curings, :company_name, :string
    add_column :curings, :date, :date
    add_column :curings, :season, :string
    add_column :curings, :farm_name, :string
    add_column :curings, :facility, :string
    add_column :curings, :time, :datetime
    add_column :curings, :day, :date
    add_column :curings, :temperature, :string
    add_column :curings, :pro_number, :string
  end
end

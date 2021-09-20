class RemoveCompanyNameFromCalenders < ActiveRecord::Migration[6.0]
  def change
    remove_column :calenders, :Company_Name, :string
    remove_column :calenders, :Date, :date
    remove_column :calenders, :Season, :string
    remove_column :calenders, :Farm_Name, :string
    remove_column :calenders, :Month, :string
    remove_column :calenders, :Activity, :string
    remove_column :calenders, :Pro_Number, :string

    add_column :calenders, :company_name, :string
    add_column :calenders, :date, :date
    add_column :calenders, :season, :string
    add_column :calenders, :farm_name, :string
    add_column :calenders, :month, :string
    add_column :calenders, :activity, :string
    add_column :calenders, :pro_number, :string
  end
end

class RemoveCompanyNameFromRainfalls < ActiveRecord::Migration[6.0]
  def change
    remove_column :rainfalls, :Company_Name, :string
    remove_column :rainfalls, :Date, :date
    remove_column :rainfalls, :Season, :string
    remove_column :rainfalls, :Farm_Name, :string
    remove_column :rainfalls, :Section, :string
    remove_column :rainfalls, :Mls_received, :string
    remove_column :rainfalls, :Pro_Number, :string

    add_column :rainfalls, :company_name, :string
    add_column :rainfalls, :Date, :date
    add_column :rainfalls, :season, :string
    add_column :rainfalls, :farm_name, :string
    add_column :rainfalls, :section, :string
    add_column :rainfalls, :mls_received, :string
    add_column :rainfalls, :pro_number, :string
  end
end

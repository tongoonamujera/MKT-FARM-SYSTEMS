class RenameCompanyNameToCompanyNameInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :Company_Name, :company_name
    add_column :users, :farm_name, :string
    rename_column :users, :Address, :address
    rename_column :users, :Category, :category
    rename_column :users, :Pro_Number, :pro_number
  end
end

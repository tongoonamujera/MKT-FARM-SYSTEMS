class RemoveCompanyNameFromAssets < ActiveRecord::Migration[6.0]
  def change
    remove_column :assets, :Company_Name, :string
    add_column :assets, :company_name, :string
  end
end

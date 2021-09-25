class AddCompanyNameToTimebooks < ActiveRecord::Migration[6.0]
  def change
    add_column :timebooks, :company_name, :string
    add_column :timebooks, :farm_name, :string
  end
end

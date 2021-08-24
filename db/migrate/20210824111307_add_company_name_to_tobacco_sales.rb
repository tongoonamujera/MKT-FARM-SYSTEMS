class AddCompanyNameToTobaccoSales < ActiveRecord::Migration[6.0]
  def change
    add_column :tobacco_sales, :company_name, :string
  end
end
